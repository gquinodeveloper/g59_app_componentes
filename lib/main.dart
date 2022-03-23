import 'package:flutter/material.dart';
import 'package:g59_flutter_componentes/screens/Listviewbuilder_screen.dart';
import 'package:g59_flutter_componentes/screens/alert_screen.dart';
import 'package:g59_flutter_componentes/screens/avatar_screen.dart';
import 'package:g59_flutter_componentes/screens/card_screen.dart';
import 'package:g59_flutter_componentes/screens/home_screen.dart';
import 'package:g59_flutter_componentes/screens/input_screen.dart';
import 'package:g59_flutter_componentes/screens/listview_screen.dart';

void main() {
  runApp(const MyApp());
}

//https://picsum.photos/id/1/200/300/?image=2
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const CardScreen(),
      home: const InputScreen(),
    );
  }
}
