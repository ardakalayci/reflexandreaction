import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:reflexandreactiontraining/dev_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) =>brightness==Brightness.light ? new ThemeData(
          primarySwatch: Colors.indigo,
          brightness: brightness,
          primaryColorDark: Colors.white,
            cursorColor:Colors.black

        ):ThemeData(
          primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          primaryColorDark: Colors.black,
          primaryColor:Colors.black,
          primarySwatch: Colors.blue,
          brightness: brightness,            cursorColor:Colors.white

        ),
        themedWidgetBuilder: (context, theme) {
          return new MaterialApp(
            title: 'Refleks Jimnastiği',
            theme: theme,
            home: DevPage(),
          );
        }
    );

  }

}



