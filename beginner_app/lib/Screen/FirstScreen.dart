import 'package:beginner_app/Screen/SecondScreen.dart';
import 'package:flutter/material.dart';

class MyFirstScreen extends StatefulWidget {
  @override
  _MyFirstScreenState createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: height / 2,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: new ExactAssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: height / 2,
            width: width,
            color: Color(0XFFFFFFFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    width: 300,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0Xffc8d9e0),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  onPressed: null,
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  child: Container(
                    width: 300,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
