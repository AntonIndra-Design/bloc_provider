import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorBloc extends Bloc<String, Color> {
  ColorBloc() : super(Colors.amber);

  Color _colors = Colors.amber;
  Color get colors => _colors;

  @override
  Stream<Color> mapEventToState(event) async* {
    if (event == 'blue') {
      _colors = Colors.blue;
    } else {
      _colors = Colors.amber;
    }

    yield _colors;
  }
}
