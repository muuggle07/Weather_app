import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/pages/weather_page.dart';


class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var textStyle = GoogleFonts.lato(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );

  final usernameController=TextEditingController();
  final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Lottie.asset(
              'assets/auth2.json', // Replace with the path to your Lottie animation file
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            Text('Welcome to Weather app',style:textStyle,).text.xl2.make(),
            //user name box
            TextField(
              controller:usernameController,
              decoration:const InputDecoration(
                labelText:'Username',
                hoverColor:Colors.greenAccent
              ),
            ),

            TextField(
              controller:passwordController,
              decoration:const InputDecoration(
                  labelText:'Password',
                  hoverColor:Colors.greenAccent
              ),
            ),
            const SizedBox(
              height:40,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>WeatherPage()));

            }, child:Text('login'))
          ],
        ),
      ).pLTRB(32,40, 32, 130,)
    );
  }
}

