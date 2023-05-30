import 'package:flutter/material.dart';
import 'package:rolling_dice/const/image.dart';
import 'dart:math';

final random = Random(); // only create one time random object

class RollingDice extends StatefulWidget {
  const RollingDice({super.key});

  // const RollingDice.Color({required this.color,super.key}) : color1 = Colors.blueAccent;
  //
  // final Color color1;
  // final Color color;

  @override
  State<StatefulWidget> createState() {
    return _RollingDiceState();
  }
}

class _RollingDiceState extends State<StatefulWidget> {
  var count = 0;
  var height = AppBar().preferredSize.height;
  static const diceList = [
    Images.dice_1,
    Images.dice_2,
    Images.dice_3,
    Images.dice_4,
    Images.dice_5,
    Images.dice_6
  ];

  int randomNum() {
    return random.nextInt(6);
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.only(bottom: height),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            diceList[count],
            width: 150,
          ),
          const SizedBox(
            height: 12,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  count = randomNum();
                  print('Dice - ${count + 1}');
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                elevation: 5,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              ),
              child: const Text(
                'Press',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 22),
              ))
        ],
      ),
    ));
  }
}
