import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/randomizer_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomizerBloc(),
      child: MaterialApp(
        title: "random",
        home: Randomizer(),
      ),
    );
  }
}

class Randomizer extends StatelessWidget {
  // final _random = Random();
  // var currentColor = Colors.black;
  // double startHeight = 200;
  // double startWidth = 200;
  // var startBorder = BorderRadius.circular(8);
  // var sec = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: BlocBuilder<RandomizerBloc, RandomizerState>(
          builder: (context, state) {
            if (state is RandomizerState){
            return AnimatedContainer(
              height: state.randomHeight,
              width: state.randomWidth,
              decoration: BoxDecoration(
                borderRadius: state.randomBorder,
                color: state.randomColor,
              ),
              duration: Duration(seconds: 1),
              curve: Curves.slowMiddle,
            );}
            return Text('error');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

BlocProvider.of<RandomizerBloc>(context).add(ChangeButton());
          // setState(() {

          //     startHeight = _random.nextInt(300).toDouble();
          //     startWidth = _random.nextInt(300).toDouble();
          //     currentColor =
          //         Colors.primaries[_random.nextInt(Colors.primaries.length)];
          //     startBorder =
          //         BorderRadius.circular(_random.nextInt(100).toDouble());
          //     sec = _random.nextInt(3);
          //   });
                    BlocProvider.of<RandomizerBloc>(context).add(ChangeButton());
        },
        
      ),
    );
  }
}
