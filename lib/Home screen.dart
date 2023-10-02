import 'package:flutter/material.dart';
import 'package:islamiapp/Tabs/ahdeth.dart';
import 'package:islamiapp/Tabs/quran.dart';
import 'package:islamiapp/Tabs/radio.dart';
import 'package:islamiapp/Tabs/sebha.dart';
import 'package:islamiapp/Tabs/settings.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/providers/my%20provider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int index=0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
        children: [
      Image.asset(
        provider.modeApp==ThemeMode.light?"assets/images/background.png":"assets/images/dark_themee.png",
      width: double.infinity,
      fit: BoxFit.cover,),
      Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle,style:Theme.of(context).textTheme.bodyLarge),
        ),
        bottomNavigationBar: BottomNavigationBar(
         currentIndex: index,
          onTap: (value){
            index=value;
            setState(() {});
          },
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/quran.png")),label: "quran",backgroundColor:Colors.black),
            BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/sebha.png")),label: "sebha",backgroundColor:Colors.black),
            BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/radio.png")),label: "radio",backgroundColor:Colors.black),
            BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "ahadeth",backgroundColor:Colors.black),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: "settings ",backgroundColor:Colors.black),
        ],),
        body:tabs[index] ,
      ),
    ]
    );
  }
  List<Widget>tabs=[QuranTab(),SebhaTab(),RadioTab(),AhadethTab(),SettingsTab(),];
}
