import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

part 'event.dart';
part 'state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  bool isDark = false;
  ThemeBloc() : super(InitialThemeState()) {
    on<ChangeThemeEvent>((event, emit) {
      isDark = !isDark;
      emit(ChangeThemeState());
    });
  }
}
