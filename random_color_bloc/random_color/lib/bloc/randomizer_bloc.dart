import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:math';

part 'randomizer_event.dart';
part 'randomizer_state.dart';

class RandomizerBloc extends Bloc<RandomizerEvent, RandomizerState> {
  RandomizerBloc()
      : super(RandomizerState(
          randomColor: Colors.black,
          randomBorder: BorderRadius.circular(8),
          randomHeight: 200,
          randomWidth: 200,
        ));
  final random = Random();
  @override
  Stream<RandomizerState> mapEventToState(
    RandomizerEvent event,
  ) async* {
    if (event is ChangeButton)
      yield RandomizerState(
        randomColor: Colors.primaries[random.nextInt(Colors.primaries.length)],
        randomHeight: random.nextInt(300).toDouble(),
        randomWidth: random.nextInt(300).toDouble(),
        randomBorder: BorderRadius.circular(random.nextInt(100).toDouble()),
      );
  }
}
