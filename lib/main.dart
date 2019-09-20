import 'package:flutter/material.dart';
import 'screens/player.dart';
import 'styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY Podcast player",
      home: Player(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: AppTextStyle,
          ),          
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: BodyTextStyle,
          body2: BodyTwoTextStyle,
        )
      ),
    );
  }
}
