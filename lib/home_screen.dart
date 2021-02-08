import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GenerateScreen.dart';
import 'Scan.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR APPLICATION'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.blueGrey,
                child: Text('SCAN QR CODE'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Scan()));
                },
              ),
              RaisedButton(
                child: Text('GENERATE QR'),
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GenerateScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
