import 'package:flutter/material.dart';
import 'dart:math' as math;

class Bola extends StatefulWidget {
  @override
  _BolaState createState() => _BolaState();
}

class _BolaState extends State<Bola> {

  TextEditingController _jari2Controller;

  @override
  void initState() {
    _jari2Controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _jari2Controller?.dispose();
    super.dispose();
  }

  double _jari2 = 0;
  double _lsPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kalkulator Bangun Ruang - Bola"
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0, top: 10.0),
                child: Center(
                  child: Image.asset("img/bola.png", width: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Luas Permukaan Bola",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0, left: 10.0,),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Jari-jari (r)"
                        ),
                        keyboardType: TextInputType.number,
                        controller: _jari2Controller,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                  child: Text("Hitunug", style: TextStyle(fontSize: 15.0),),
                  onPressed: () {
                    setState(() {
                     _jari2 = double.parse(_jari2Controller.text);
                     _lsPermukaan = 4 * math.pi * _jari2;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(
                  "4 * 3.14 * $_jari2 = $_lsPermukaan",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}