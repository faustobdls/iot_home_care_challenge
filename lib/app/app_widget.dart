import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _primary = Color(0xFF3F4FA5);

    TextStyle _textStyle1 = TextStyle(
      color: _primary,
      fontSize: 26,
    );
    TextStyle _textStyle2 = TextStyle(
      color: _primary.withAlpha(120),
      fontSize: 12,
    );
    TextStyle _textStyle3 = TextStyle(
      color: _primary.withAlpha(120),
      fontSize: 16,
    );

    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Smart Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: _primary,
        dividerColor: Color(0xFFEDEFFB),
        dividerTheme: DividerThemeData(color: Color(0xFFEDEFFB)),
        primaryTextTheme: TextTheme(
          body1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
          display1: _textStyle1,
          display2: _textStyle2,
          display3: _textStyle3,
        ),
        accentColor: Color(0xFFFE6491),
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
