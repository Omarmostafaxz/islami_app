import 'package:flutter/material.dart';
import 'package:islamiapp/Home%20screen.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/page%20one%20quran/sura%20details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      initialRoute: HomeScreen.routeName ,
      routes:{
        HomeScreen.routeName:(context) => HomeScreen(),
        SuraDetails.routeName:(context) => SuraDetails(),
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,


    );
  }
}