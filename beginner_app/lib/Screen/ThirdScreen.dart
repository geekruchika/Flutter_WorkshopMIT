import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.black,
//          leading: Icon(Icons.menu),
          title: Text("Home Page"),
          centerTitle: true,
          actions: <Widget>[
            Icon(Icons.person),
            Icon(Icons.search),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: <Widget>[
                  // Image.asset(
                  //   "assets/background.jpg",
                  //   height: 150,
                  //   width: width,
                  //   fit: BoxFit.cover,
                  // ),
                  Container(
                    height: 150,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: new ExactAssetImage('assets/background.jpg'),
                      fit: BoxFit.cover,
                    )),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("$index"),
                      ),
                      title: Text("Title $index"),
                      subtitle: Text("subtitle....."),
                      trailing: Text("time"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text("Share"),
                      Text("View Collectiom")
                    ],),
                  )
                ],
              ),
            );
          },
        ));
  }
}
// Card(
//               child: Column(
//                 children: <Widget>[
//                   Image.asset(
//                     "assets/background.jpg",
//                     height: 150,
//                   ),
//                   ListTile(
//                     leading: CircleAvatar(
//                       child: Text("$index"),
//                     ),
//                     title: Text("Title $index"),
//                     subtitle: Text("subtitle....."),
//                     trailing: Text("time"),
//                   )
//                 ],
//               ),
//             );
