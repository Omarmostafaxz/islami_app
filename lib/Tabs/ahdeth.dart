import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<ahadethModel> allahadeth = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset("assets/images/ahadeth_image.png"),
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Text(
          "ahadeth",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.separated(separatorBuilder: (context, index) => Divider(
            thickness: 3,
            indent: 40,
            endIndent: 40,
          ),
              itemBuilder: (context, index) {
                return Text(allahadeth[index].title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),);
              },
              itemCount: allahadeth.length,)
        )],
    );
  }
  void loadhadeth() {
    rootBundle.loadString("assets/Files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        ahadethModel hadethModel = ahadethModel(title, content);
        allahadeth.add(hadethModel);
      }
    });
  }
}
