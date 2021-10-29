import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:rectangle/navigatorroute.dart';

final GoogleSignIn signin = GoogleSignIn();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isAuth = false;

  login() {
    signin.signIn();
  }

  @override
  void initState() {
    super.initState();
    signin.onCurrentUserChanged.listen((Account) {
    if (Account != null) {
      print('User signed in !: $Account');
      setState(() {
        isAuth = true;
      });
    } else{
      setState(() {
        isAuth = false;
      });
    }
    });
  }

  Widget buildAuthScreen(){
    return const navigator_route();
  }

  Scaffold buildUnauthScreen(){
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient :  LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF447E7D),
              Color(0xFF2D1A45),
              Color(0xFF447E7D),
            ],
          ),
        ),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            RichText(
              text: const TextSpan(
                text: 'Cross',
                style: TextStyle(
                    fontSize: 60,
                    color: Color(0xFFEE293A),
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: '/',
                      style: TextStyle(
                          fontSize: 60,
                          color: Color(0xFFEDE1CB),
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Feed',
                      style: TextStyle(
                          fontSize: 60,
                          color: Color(0xFF54C1A2),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            MaterialButton(
              onPressed: (){
                Navigator.push (
                    context,
                    MaterialPageRoute(builder: (context) => navigator_route())
                );
              },
              child : Container(
                width: 260.0,
                height: 60,
                decoration: const BoxDecoration(
                  image : DecorationImage(
                      image: AssetImage("assets/google_signin_button.png"),
                      fit: BoxFit.cover,
                  )
                ),
              )
            )
          ],
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? buildAuthScreen() : buildUnauthScreen();
  }
}