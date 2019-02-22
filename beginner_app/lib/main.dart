import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyFirstPage(),
    );
  }
}

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starting Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
                Text("Playing with Widgets",style: TextStyle(color: Colors.red,fontSize: 24),),
            Text("Children 1"),
            Text("Children 2"),
            Text("Children 3"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Children 1',
                ),
                Text("Children 2"),
                Text("Children 3"),
              ],
            ),
            Container(height: 50,width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(30))

            ),
            child: Text("Container"),),
            ListTile(
              title: Text("Title"),
              subtitle: Text("Subtitle"),
              leading: Text("Lead"),
              trailing: Text("Trail"),
            ),
            Card(child: ListTile(
              title: Text("Title"),
              subtitle: Text("Subtitle"),
              leading: Text("Lead"),
              trailing: Text("Trail"),
            ),)
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: null, //_incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}

