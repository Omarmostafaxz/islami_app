import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/my provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.ChangeLanguage("en");
            },
            child: Row(
              children: [
                const Text("English",style: TextStyle(color: Colors.black38),),
                const Spacer(),
                provider.LanguageCode=="en"? const Icon(Icons.done,color: Colors.black38,):const SizedBox.shrink(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.ChangeLanguage("ar");
            },
            child: Row(
              children: [
                const Text("Arabic",),
                const Spacer(),
                provider.LanguageCode=="en"?const SizedBox.shrink():const Icon(Icons.done,),
              ],
            ),
          )
        ],

      ),
    );
  }
}
