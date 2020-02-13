
import 'package:flutter/material.dart';
import 'dart:async';

import 'home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState() {
        Timer(Duration(seconds: 3), ()=> Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            fit: StackFit.expand,
            children: <Widget> [
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  )
              ),
              Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(height: 150.0,),
                    Expanded(
                        flex: 2,
                        child: Container(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget> [
                                  Container(
                                    child: Icon(Icons.account_circle, size: MediaQuery.of(context).size.width/3,color: Colors.white,),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15.0),
                                  ),
                                  Text('SPLASH',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24.0,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold)
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.0),
                                  ),
                                  Text('Description text',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold)
                                  ),
                                ]
                            )
                        )
                    ),
                    SizedBox(height: 100.0,),
                    Expanded(flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                                children: <Widget> [
                                  Center(
                                    child: Text('Bottom text', style: TextStyle(
                                        fontFamily: 'Open Sans',
                                        fontSize: 11.0,
                                        color: Colors.white )),
                                  ),
                                ]
                            ),
                          ],
                        ))
                  ]
              )
            ]
        )
    );
  }
}
