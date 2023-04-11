import 'package:flutter/material.dart';
import 'package:intl/intl_standalone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offertelavoroflutter_app/constants/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_options.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item.dart';

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
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Styles.lightBackground,
          textTheme: _getTextTheme(context),
          cardTheme: _getCardTheme(context)
        ),
        home: const MyHomePage(title: 'Offerte Lavoro Flutter'),
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
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    loadOptions();
  }

  loadOptions() async {
    HiringJobOfferOptions options = await RepositoryProvider.of<HiringJobOfferRepository>(context).getHiringJobOffersOptions();
    // TODO use options to populate options
    print(options);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<PagedList<HiringJobOffer>>(
        future: RepositoryProvider.of<HiringJobOfferRepository>(context).getHiringJobOffers(
          pageSize: 10,
          // contratto: ['Full time'],
          // seniority: ['Junior', 'Mid'],
          // team: ['Ibrido', 'Full Remote'],
          // searchText: 'flutter'
        ),
        builder: (context, snapshot) {
          if(snapshot.hasError) {
            print(snapshot.error);
            return const Text('Errore');
          }

          if(!snapshot.hasData) return const SizedBox();


          List<HiringJobOffer> items = snapshot.data!.results;
          return ListView.builder(
            padding: const EdgeInsets.only(left: Styles.screenHorizPadding, right: Styles.screenHorizPadding, top: 20),
            itemBuilder: (context, index) => HiringJobOfferItem(hiringJobOffer: items[index]),
            itemCount: items.length,
          );
        },
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
