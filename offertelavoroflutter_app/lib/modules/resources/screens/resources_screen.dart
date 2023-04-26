import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:offertelavoroflutter_app/constants/urls.dart';
import 'package:offertelavoroflutter_app/helpers/app_url_launcher.dart';
import 'package:offertelavoroflutter_app/modules/app_shell/widgets/base_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ResourcesScreen extends StatefulWidget {
  const ResourcesScreen({Key? key}) : super(key: key);

  @override
  State<ResourcesScreen> createState() => _ResourcesScreenState();
}

class _ResourcesScreenState extends State<ResourcesScreen> {
  final String initialUrl = Urls.ecosistemaFlutterItalia;
  late WebViewController webViewController;
  bool isPageLoaded = false;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onPageFinished: (url) {
          isPageLoaded = true;
          if(Theme.of(context).brightness == Brightness.dark) {
            webViewController.runJavaScript("document.getElementsByClassName('toggle-mode')[0].click()");
          }
        },
        onNavigationRequest: (NavigationRequest request) {
          if(!isPageLoaded) {
            return NavigationDecision.navigate;
          } else {
            // We open external links in the browser
            AppUrlLauncher.openUrlInBrowser(request.url);
            return NavigationDecision.prevent;
          }
        }))
      ..loadRequest(Uri.parse(initialUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(AppLocalizations.of(context)!.resourcesScreenTitle),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}
