import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String BarCode = "";
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scan'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.blueGrey,
                child: Text('Start Camer Scan'),
                onPressed: scan,
              ),
              Text(
                BarCode,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
  Future scan() async{
    try{
      String barCode= (await BarcodeScanner.scan()) as String;
      setState(() {
        this.BarCode=barCode;
      });
    }
    catch(e){
      setState(() {
        this.BarCode='UnKown Error $e';
      });
    }


  }
}

