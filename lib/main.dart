import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamiapp/Home%20screen.dart';
import 'package:islamiapp/hadeth_details.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/page%20one%20quran/sura%20details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false ,
      initialRoute: HomeScreen.routeName ,
      routes:{
        HomeScreen.routeName:(context) => HomeScreen(),
        SuraDetails.routeName:(context) => SuraDetails(),
        HadethDetails.routeName:(context) => HadethDetails(),
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,



    );

  }
}