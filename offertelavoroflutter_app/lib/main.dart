import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl_standalone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offertelavoroflutter_app/constants/routes.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';
import 'package:offertelavoroflutter_app/modules/app_preferences/repositories/app_preferences_repository.dart';
import 'package:offertelavoroflutter_app/modules/app_shell/blocs/splash_screen_bloc.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/repositories/freelance_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/screens/freelance_job_offer_detail_screen/freelance_job_offer_detail_screen.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/screens/hiring_job_offer_detail_screen/hiring_job_offer_detail_screen.dart';
import 'package:offertelavoroflutter_app/modules/home/screens/home_screen/home_screen.dart';
import 'package:offertelavoroflutter_app/modules/onboarding/screens/onboarding_screen/onboarding_screen.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // we remove the splash screen manually with the SplashScreenBloc
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await findSystemLocale();
  GoogleFonts.config.allowRuntimeFetching = false;
  await dotenv.load(fileName: 'environment/.env');
  await Hive.initFlutter();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<HiringJobOfferRepository>(create: (context) => HiringJobOfferRepository()),
        RepositoryProvider<FreelanceJobOfferRepository>(create: (context) => FreelanceJobOfferRepository()),
        RepositoryProvider<AppPreferencesRepository>(create: (context) => AppPreferencesRepository()),
      ],
      child: BlocProvider(
        create: (context) => SplashScreenBloc(),
        child: MaterialApp(
          onGenerateTitle: (context) => AppLocalizations.of(context)!.appName,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            colorScheme: const ColorScheme.light(
              primary: Styles.primaryDark,
              secondary: Styles.accent,
              onPrimary: Colors.white,
              onSecondary: Colors.white,
            ),
            scaffoldBackgroundColor: Colors.white,
            textTheme: _getTextTheme(context),
            cardTheme: _getCardTheme(context),
            inputDecorationTheme: _getInputDecoratorTheme(context),
            elevatedButtonTheme: _getElevatedBtnThemeData(context),
            snackBarTheme: _getSnackBarThemeData(context)
          ),
          initialRoute: Routes.onboarding,
          onGenerateRoute: (settings) {
            switch(settings.name) {
              case Routes.onboarding:
                return MaterialPageRoute<void>(builder: (context) => const OnboardingScreen(), settings: settings);

              case Routes.home:
                return MaterialPageRoute<void>(builder: (context) => const HomeScreen(), settings: settings);

              case Routes.hiringJobOfferDetail:
                return MaterialPageRoute<void>(builder: (context) => HiringJobOfferDetailScreen(args: ModalRoute.of(context)?.settings.arguments as HiringJobOfferDetailScreenArgs), settings: settings);

              case Routes.freelanceJobOfferDetail:
                return MaterialPageRoute<void>(builder: (context) => FreelanceJobOfferDetailScreen(args: ModalRoute.of(context)?.settings.arguments as FreelanceJobOfferDetailScreenArgs), settings: settings);

              default:
                throw Exception('Invalid route: ${settings.name}');
            }
          },
        ),
      ),
    );
  }

  TextTheme _getTextTheme(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GoogleFonts.montserratTextTheme(textTheme.copyWith(
      headlineLarge: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      headlineMedium: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      headlineSmall: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      titleLarge: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      titleMedium: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      titleSmall: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, color: Styles.primaryDark),
      bodyLarge: textTheme.bodyLarge?.copyWith(color: Styles.primaryDark),
      bodyMedium: textTheme.bodyMedium?.copyWith(color: Styles.primaryDark),
      bodySmall: textTheme.bodySmall?.copyWith(color: Styles.primaryDark),
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

  SnackBarThemeData _getSnackBarThemeData(BuildContext context) {
    return SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Styles.primaryDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
