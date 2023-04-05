import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/notion_api_client.dart';

void main() async {
  await dotenv.load(fileName: 'environment/.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: FutureBuilder<Response>(
        future: NotionApiClient().makeRequest(HttpMethods.post, '/databases/${NotionApiClient.hiringJobOffersDatabase}/query'),
        builder: (context, snapshot) {
          if(snapshot.hasError) return const Text('Errore');
          if(!snapshot.hasData) return const SizedBox();

          return SingleChildScrollView(child: Text(snapshot.data?.body ?? ''));
        },
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
