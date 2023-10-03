import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/my provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return  Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.ChangeLanguage("en");
            },
            child: Row(
              children: [
                Text("English",style: TextStyle(color: Colors.black38),),
                Spacer(),
                provider.LanguageCode=="en"? Icon(Icons.done,color: Colors.black38,):SizedBox.shrink(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.ChangeLanguage("ar");
            },
            child: Row(
              children: [
                Text("Arabic",),
                Spacer(),
                provider.LanguageCode=="en"?SizedBox.shrink():Icon(Icons.done,),
              ],
            ),
          )
        ],

      ),
    );
  }
}
