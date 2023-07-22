import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:glimmerenglish_00/unit2/kelimelistesi2.dart';
import 'package:glimmerenglish_00/unit1/kelimelistesi1.dart';
import 'package:glimmerenglish_00/unit1quiz/quizscreen1.dart';
import 'package:glimmerenglish_00/unit2quiz/quizscreen2.dart';
import 'package:glimmerenglish_00/unit3/kelimelistesi3.dart';
import 'package:glimmerenglish_00/unit3quiz/quizscreen3.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "App",
    home: SplashScreen(),
  ),
);


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(
          child: Text(
            'GLIMMER ENGLISH',
            style: TextStyle(fontSize: 40,fontFamily: 'LobsterTwo'),
          ),),
        backgroundColor: Colors.white,
        nextScreen: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromRGBO(255, 255, 255, 1.0),
          title: Center(child: Text('GLIMMER ENGLISH',)),
          backgroundColor: Color.fromRGBO(65, 125, 196, 1.0),),
        backgroundColor: Color.fromRGBO(197, 231, 253, 1.0),
        body: SafeArea(

          child: Column(children: <Widget>[
            SizedBox(width: 20.0,
              height: 30.0,),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => KelimeKartlari1(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                height: 60.0,

                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Unit1-Travel',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Unit1Quiz(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                height: 60.0,

                //color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Unit1 Quiz',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => KelimeKartlari2(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                height: 60.0,

                //color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Unit2-Hospital',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Unit2Quiz(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                height: 60.0,

                //color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Unit2 Quiz',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),


            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => KelimeKartlari3(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                height: 60.0,

                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Unit3-Hobbies',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Unit3Quiz(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                height: 60.0,

                //color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Unit3 Quiz',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),

          ]),
        ),
      );
    });
  }
}
