import 'package:flutter/material.dart';
import 'package:weather_app/authentication/loginscreen.dart';

void main(){
  runApp(Myhome());
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home:loginpage(),
    );
  }
}
