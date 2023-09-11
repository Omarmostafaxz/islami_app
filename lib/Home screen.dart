import 'package:flutter/material.dart';
import 'package:islamiapp/Tabs/ahdeth.dart';
import 'package:islamiapp/Tabs/quran.dart';
import 'package:islamiapp/Tabs/radio.dart';
import 'package:islamiapp/Tabs/sebha.dart';
import 'package:islamiapp/Tabs/settings.dart';
import 'package:islamiapp/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
      Image.asset("assets/images/background.png",
      width: double.infinity,
      fit: BoxFit.cover,),
      Scaffold(
        appBar: AppBar(
          title: Text("Islami",style:Theme.of(context).textTheme.bodyLarge),
        ),
        bottomNavigationBar: BottomNavigationBar(
         currentIndex: index,
          onTap: (value){
            index=value;
            setState(() {});
          },
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "quran",backgroundColor:MyTheme.PrimaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "sebha",backgroundColor:MyTheme.PrimaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "radio",backgroundColor:MyTheme.PrimaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "ahadeth",backgroundColor:MyTheme.PrimaryColor),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: "settings ",backgroundColor:MyTheme.PrimaryColor),
        ],),
        body:tabs[index] ,
      ),
    ]
    );
  }
  List<Widget>tabs=[QuranTab(),SebhaTab(),RadioTab(),AhadethTab(),SettingsTab(),];
}
