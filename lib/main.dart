import 'package:flutter/material.dart';
import 'package:flutter_application_netflix_clone/view/homescreen/spalsh_screen/spalsh_screen.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpalshScreen(
        
      ) ,

    );
  }
}