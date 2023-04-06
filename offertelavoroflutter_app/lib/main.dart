import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paginated_list/paginated_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/notion_api_client.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<PaginatedList<HiringJobOffer>>(
        future: RepositoryProvider.of<HiringJobOfferRepository>(context).getHiringJobOffers(),
        builder: (context, snapshot) {
          if(snapshot.hasError) return const Text('Errore');
          if(!snapshot.hasData) return const SizedBox();


          List<HiringJobOffer> items = snapshot.data!.results;
          return ListView.builder(
            itemBuilder: (context, index) => ListTile(title: Text(items[index].properties.name.title.first.plainText)),
            itemCount: items.length,
          );
        },
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
