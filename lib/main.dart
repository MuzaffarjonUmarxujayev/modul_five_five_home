import 'package:flutter/material.dart';
import 'package:modul_five_five_home/pages/home_market_ui.dart';
import 'package:modul_five_five_home/pages/market_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeMarketPage(),
      routes: {
        MarketUiPage.id: (context) => const MarketUiPage(),
        HomeMarketPage.id: (context) => const HomeMarketPage(),
      },
    );
  }
}

