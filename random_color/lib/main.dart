import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "random",
      home: Randomizer(),
    );
  }
}


class Randomizer extends StatefulWidget {
  const Randomizer({Key? key}) : super(key: key);

  @override
  _RandomizerState createState() => _RandomizerState();
}

class _RandomizerState extends State<Randomizer> {
  final _random = Random();
  var currentColor = Colors.black;
  double startHeight = 200;
  double startWidth = 200;
  var startBorder = BorderRadius.circular(8);
  var sec = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: startHeight,
          width: startWidth,
          
          decoration: BoxDecoration(
            borderRadius: startBorder,
            color: currentColor,
          ),
          duration: Duration(seconds: sec),
          curve: Curves.elasticIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            
            startHeight = _random.nextInt(300).toDouble();
            startWidth = _random.nextInt(300).toDouble();
            currentColor =
                Colors.primaries[_random.nextInt(Colors.primaries.length)];
            startBorder =
                BorderRadius.circular(_random.nextInt(100).toDouble());
            sec = _random.nextInt(3);
          });
        },
      ),
    );
  }
}
