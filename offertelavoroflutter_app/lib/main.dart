import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';

void main() async {
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
        ),
        home: const MyHomePage(title: 'Offerte Lavoro Flutter'),
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
    RepositoryProvider.of<HiringJobOfferRepository>(context).getHiringJobOffersOptions();
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
          contratto: ['Full time'],
          seniority: ['Junior', 'Mid'],
          team: ['Ibrido', 'Full Remote'],
          searchText: 'flutter'
        ),
        builder: (context, snapshot) {
          if(snapshot.hasError) {
            print(snapshot.error);
            return const Text('Errore');
          }

          if(!snapshot.hasData) return const SizedBox();


          List<HiringJobOffer> items = snapshot.data!.results;
          return ListView.builder(
            itemBuilder: (context, index) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('${items[index].emoji} ${items[index].name.first.text}'),
                    Text(items[index].contratto?.name ?? '-', style: TextStyle(color: items[index].contratto?.color)),
                    Text(items[index].team?.name ?? '-', style: TextStyle(color: items[index].team?.color)),
                    Text(items[index].seniority?.name ?? '-', style: TextStyle(color: items[index].seniority?.color)),
                  ],
                ),
              ),
            ),
            itemCount: items.length,
          );
        },
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
