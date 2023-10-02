import 'package:flutter/material.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/my provider.dart';

class themingBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return  Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              children: [
                Text("Dark",style: TextStyle(color: Colors.black38),),
                Spacer(),
                provider.modeApp==ThemeMode.dark? Icon(Icons.done,color: MyThemeData.lightColor,):SizedBox.shrink(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: Row(
              children: [
                Text("Light",),
                Spacer(),
                provider.modeApp==ThemeMode.dark?SizedBox.shrink():Icon(Icons.done,),
              ],
            ),
          )
        ],

      ),
    );
  }
}
