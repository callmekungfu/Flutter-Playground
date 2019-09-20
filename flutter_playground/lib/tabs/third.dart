import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.featured_video,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "Third Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        )
      ),
    );
  }
}