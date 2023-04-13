import 'package:flutter/material.dart';
import 'package:intl/intl_standalone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offertelavoroflutter_app/constants/styles.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/screens/hiring_job_offer_screen/hiring_job_offer_screen.dart';

void main() async {
  await findSystemLocale();
  GoogleFonts.config.allowRuntimeFetching = false;
  await dotenv.load(fileName: 'environment/.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<HiringJobOfferRepository>(create: (context) => HiringJobOfferRepository()),
      ],
      child: MaterialApp(
        title: 'Offerte Lavoro Flutter',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Styles.primaryDark,
            secondary: Styles.accent,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
          ),
          scaffoldBackgroundColor: Styles.lightBackground,
          textTheme: _getTextTheme(context),
          cardTheme: _getCardTheme(context),
          inputDecorationTheme: _getInputDecoratorTheme(context),
          elevatedButtonTheme: _getElevatedBtnThemeData(context),
        ),
        home: const HiringJobOfferScreen(),
      ),
    );
  }

  TextTheme _getTextTheme(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GoogleFonts.montserratTextTheme(textTheme.copyWith(
      titleLarge: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      titleMedium: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      titleSmall: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      bodyMedium: textTheme.bodyMedium?.copyWith(color: Styles.primaryDark),
      bodySmall: textTheme.bodySmall?.copyWith(color: Styles.lightText),
    ));
  }
  
  CardTheme _getCardTheme(BuildContext context) {
    return CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  ElevatedButtonThemeData _getElevatedBtnThemeData(BuildContext context) {
    return ElevatedButtonThemeData(style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(const Size(48, 48)),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    ));
  }

  InputDecorationTheme _getInputDecoratorTheme(BuildContext context) {
    return const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide.none,
      )
    );
  }
}
