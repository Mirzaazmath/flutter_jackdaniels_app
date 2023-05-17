import 'package:flutter/material.dart';
import 'package:jack_daniels/splashscreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,



      home: SplashScreen(),
    );
  }
}
