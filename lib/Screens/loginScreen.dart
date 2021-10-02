import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_analytics/Screens/homeScreen.dart';
import 'package:radio_analytics/Widgets/bezierContainer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool vis = true;
  final _globalkey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  late String errorText ;
  bool validate = false;
  bool circular = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(children: <Widget>[
        Positioned(
            top: -height * .15,
            right: -MediaQuery.of(context).size.width * .4,
            child: BezierContainer()),
        Container(
          child: Form(
            key: _globalkey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _title(),
                  SizedBox(
                    height: 40,
                  ),
                  usernameTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                   onTap: () {
                setState(() {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => HomeScreen()));
                });
              },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xfffbb448), Color(0xffe46b10)])),
                      child: Center(
                        child: circular
                            ? CircularProgressIndicator()
                            : Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                   ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }

  Widget usernameTextField() {
    return Column(
      children: [
        Text("Enter Authorization Code"),
        TextFormField(
          controller: _usernameController,
         decoration: InputDecoration(
           //errorText: validate ? null : errorText,
          focusedBorder: UnderlineInputBorder(
           borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
          )
           )
        )
      ],
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Summer ',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            TextSpan(
              text: 'Radio ',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'Analytics',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }
}
