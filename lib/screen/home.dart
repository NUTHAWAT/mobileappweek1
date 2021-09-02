import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: 300,
              left: 50,
              child: Text(
                "HELLO",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
