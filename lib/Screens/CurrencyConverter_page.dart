import 'package:flutter/material.dart';
import 'package:bankingapplication/Data/AllVariables.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class CurrencyConverter extends StatefulWidget {
  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url:
          "https://www.google.com/search?q=currency+converter&rlz=1C1CHBF_enEG922EG922&oq=c&aqs=chrome.0.69i59j69i57j69i60l4j5l2.4775j0j1&sourceid=chrome&ie=UTF-8",
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: colors.ButtonsColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: colors.AppBarColor,
        title: new Text(
          Language.Lang[41],
          style: TextStyle(
              fontSize: fontsSize.madiamfont,
              color: colors.ButtonsColor,
              fontFamily: 'GrenzeGotisch-VariableFont_wght'),
        ),
      ),
    );
  }
}
