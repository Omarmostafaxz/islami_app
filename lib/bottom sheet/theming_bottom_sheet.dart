import 'package:flutter/material.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/my provider.dart';

class themingBottomSheet extends StatelessWidget {
  const themingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              children: [
                const Text("Dark",style: TextStyle(color: Colors.black38),),
                const Spacer(),
                provider.modeApp==ThemeMode.dark? const Icon(Icons.done,color: MyThemeData.lightColor,):const SizedBox.shrink(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: Row(
              children: [
                const Text("Light",),
                const Spacer(),
                provider.modeApp==ThemeMode.dark?const SizedBox.shrink():const Icon(Icons.done,),
              ],
            ),
          )
        ],

      ),
    );
  }
}
