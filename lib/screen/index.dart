import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/screen/login.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Image.asset(
                "asset/image/logo1.png",
                width: size.width * 0.5,
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Welcome to KMUTNB",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.amber[900],
                ),
              ),
              Image.asset(
                "asset/image/pic1.png",
                width: size.width * 0.8,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "  LOGIN  " ,
                    style: TextStyle(fontSize: 28),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Login');
                  }),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 28),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Register');
                  }),
            ],
          ),
        ],
      ),
    ));
  }
}
