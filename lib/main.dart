import 'package:flutter/material.dart';

void main() {
  runApp(MiCardApp());
}

const noOfPhone = 1.0;

class MiCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Card',
      home: Scaffold(
        backgroundColor: Colors.amber,
//        appBar: AppBar(
//          backgroundColor: Colors.orange,
//          title: Center(
//            child: Text('Demo'),
//          ),
//          elevation: 2.0,
//        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//Image Container
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.orange,
                      backgroundImage: AssetImage('assets/images/poolside.jpg'),
                    ),
                  ),
//Name container
                  Container(
                    margin: EdgeInsets.all(1.0),
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent, width: 5.0),
                    ),
                    child: Text(
                      "JUDE OKOROAFOR",
                      style: TextStyle(
                          backgroundColor: Colors.amber,
                          letterSpacing: 3.0,
                          fontFamily: 'Pacifico',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ),
//Stack container
                  Container(
                    margin: EdgeInsets.all(1.0),
                    padding: EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent)),
                    child: Text(
                      "FLUTTER DEVELOPER",
                      style:
                          TextStyle(fontFamily: 'Roboto', letterSpacing: 2.0),
                    ),
                  ),
//Phone no container
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 1.5),
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.2),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "+234-813-204-6932",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
//Email container
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 1.5),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.2),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.mail,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "judeokoroafor@gmail.com",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
        Container(
          child: RaisedButton(
            onPressed: () => Share.share(// add your link or image here),
              child:Text('Share'),
              shape: RoundedRectangleBorder(borderRadius:
              BorderRadius.circular(15.0)),
            ),
                ],
              ),
            ],
          ),
        ),
//        floatingActionButton: FloatingActionButton(
//            backgroundColor: Colors.orange,
//            child: Icon(Icons.add),
//            onPressed: () {}),
      ),
    );
  }
}
