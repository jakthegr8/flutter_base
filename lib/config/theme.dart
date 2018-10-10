import 'package:flutter/material.dart';

class AgentAppTheme {
  const AgentAppTheme._(this.name, this.data);

  final String name;
  final ThemeData data;
}

final AgentAppTheme darkAgentAppTheme =
    new AgentAppTheme._('Dark', _buildDarkTheme());
final AgentAppTheme lightAgentAppTheme =
    new AgentAppTheme._('Light', _buildLightTheme());

ThemeData _buildLightTheme() {
  const Color primaryColor = Color.fromRGBO(33, 64, 95, 1.0);
  const Color primaryButtonColor = Color.fromRGBO(0, 68, 221, 1.0);
  const Color primaryBackgroundColor = Color.fromRGBO(247, 247, 247, 1.0);

  final ThemeData base = new ThemeData.light();
  return base.copyWith(
    primaryColor: primaryColor,
    buttonColor: primaryButtonColor,
    indicatorColor: Colors.green,
    splashColor: Colors.blueGrey[300],
    splashFactory: InkRipple.splashFactory,
    accentColor: Colors.blueGrey,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: primaryBackgroundColor,
    backgroundColor: primaryBackgroundColor,
    errorColor: const Color(0xFFB00020),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      height: 50.0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      hintStyle:
          TextStyle(color: Colors.black, fontFamily: "SFProText-Regular"),
    ),
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
  );
}

ThemeData _buildDarkTheme() {
  const Color primaryColor = Color(0xFF0175c2);
  final ThemeData base = new ThemeData.dark();
  return base.copyWith(
    primaryColor: primaryColor,
    buttonColor: primaryColor,
    indicatorColor: Colors.white,
    accentColor: const Color(0xFF13B9FD),
    canvasColor: const Color(0xFF202124),
    scaffoldBackgroundColor: const Color(0xFF202124),
    backgroundColor: const Color(0xFF202124),
    errorColor: const Color(0xFFB00020),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    title: base.title.copyWith(
      fontFamily: 'SFProText',
    ),
  );
}
