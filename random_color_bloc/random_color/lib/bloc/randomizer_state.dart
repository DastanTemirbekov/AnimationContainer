part of 'randomizer_bloc.dart';

@immutable
class RandomizerState {
  Color? randomColor;
  double? randomHeight = 200;
  double? randomWidth = 200;
  BorderRadiusGeometry? randomBorder;
  var sec = 1;
  RandomizerState(
      {
      this.randomColor,
      this.randomHeight,
      this.randomWidth,
      this.randomBorder});
}
