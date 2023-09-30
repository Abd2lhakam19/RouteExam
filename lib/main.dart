import 'package:flutter/material.dart';
import 'package:route_exam/home_screen.dart';
import 'package:route_exam/third_screen.dart';
import 'package:route_exam/second_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:ThirdScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SecondScreen.routeName:(context)=>SecondScreen(),
        ThirdScreen.routeName:(context)=>ThirdScreen(),

      }
      ,
    );
  }
}
