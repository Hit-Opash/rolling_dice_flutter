import 'package:flutter/material.dart';
import 'package:rolling_dice/rolling_dice_part.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  //const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(appBarTheme: const AppBarTheme(color: Colors.deepOrangeAccent)),
        home: const RollingDicePage()));
  }
}

class RollingDicePage extends StatefulWidget {
  const RollingDicePage({super.key});

  @override
  State<StatefulWidget> createState(){
    return _RollingDicePageState();
  }

}

class _RollingDicePageState extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rolling Dice',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.red],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
        child: const RollingDice(),
      ),
    ));
  }
}
