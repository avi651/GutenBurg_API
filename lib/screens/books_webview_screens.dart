import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../widgets/details_screen_back_widget.dart';

class BooksWebView extends StatelessWidget {
  final String? booksWebViewUrl;
  const BooksWebView({Key? key, required this.booksWebViewUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: DetailScreenBackWidget(detailHeaderTxt: ""),
            ),
            Expanded(
              child: WebView(
                initialUrl: booksWebViewUrl ?? "",
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
