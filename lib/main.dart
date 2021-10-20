import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fourth_project/screens/basic_desing.dart';
import 'package:fourth_project/screens/home_scree.dart';
import 'package:fourth_project/screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_screen',
      routes: {
        'basic_desing': (BuildContext context) => BasicDesignScreen(),
        'scroll_design': (BuildContext context) => ScrollDesignScreen(),
        'home_screen': (BuildContext context) => HomeScreen(),
      },
    );
  }
}
