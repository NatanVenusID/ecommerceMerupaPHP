import 'package:flutter/material.dart';
import 'package:merupastore_app/UI/loginpage.dart';
import 'package:merupastore_app/UI/signuppage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E7DA),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 136,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/merupa2.png"))),
              ),
              Container(
                margin: EdgeInsets.only(top: 70, bottom: 16),
                child: Text(
                  "Custom Made and Rent",
                  style: TextStyle(
                      color: Color(0XffB6AF9B),
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                "what kind of impression do you want to show in your special moment?",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 250,
                height: 46,
                margin: EdgeInsets.only(top: 70, bottom: 19),
                child: RaisedButton(
                  child: Text(
                    "Explore Now",
                    style: TextStyle(
                        color: Color(0xFFE9E7DA),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Colors.brown,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => PageLogin()));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                        color: Color(0XffB6AF9B),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => RegisterPage()));
                    },
                    child: Text(" Sign Up Now",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 16,
                            fontWeight: FontWeight.w300)),
                  )
                ],
              )
            ],
          )),
    );
  }
}
