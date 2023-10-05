import 'package:flutter/material.dart';
class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset("assets/images/radio.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffB7935F),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                    child: Text(
                  "إذاعة القرآن الكريم",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ))),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: SizedBox(
              width: 250,
              child: Row(
                children: [
                  Expanded(
                      child: Icon(
                    Icons.arrow_left_rounded,
                    color: Color(0xffB7935F),
                    size: 80,
                  )),
                  Expanded(
                      child: Icon(
                    Icons.play_arrow_outlined,
                    color: Color(0xffB7935F),
                    size: 90,
                  )),
                  Expanded(
                      child: Icon(
                    Icons.arrow_right_rounded,
                    color: Color(0xffB7935F),
                    size: 80,
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
