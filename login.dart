import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(MaterialApp(
  home: SignIn(),
));

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(40.0, 155.0, 40.0, 0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/img/logo.png",
              ),
              SizedBox(height: 60.0),
              Text(
              "Sign In Now",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins'
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                // color: Colors.orange,
                cursorColor: HexColor("ef9c80"),
                decoration: new InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: HexColor("ef9c80"),
                    ),
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color: HexColor("ef9c80"),
                        width: 2.0,
                    ),
                    // labelText: "Email,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              TextFormField(
                // color: Colors.orange,
                cursorColor: HexColor("ef9c80"),
                decoration: new InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: HexColor("ef9c80"),
                    ),
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: HexColor("ef9c80"),
                      width: 2.0,
                    ),
                    // labelText: "Email,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    text: "Forgot ",
                    style: TextStyle(
                      // color: Colors.blue[700],
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Password?",
                        style: TextStyle(
                          color: HexColor("8293c2"),
                          fontFamily: 'Poppins',
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: HexColor("8293c2"),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 5.0),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      // color: Colors.blue[700],
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: HexColor("8293c2"),
                          fontFamily: 'Poppins',
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}