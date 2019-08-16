import 'package:flutter/material.dart';

void main() {
  runApp(MiCardApp());
}

class MiCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Card',
      home: Scaffold(
        backgroundColor: Color(0xFF8BC34A),
        body: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Colors.green[500].withOpacity(1.0),
              ),
              clipper: getClipper(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//Image Container
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Color(0xFF8BC34A),
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
//                        backgroundColor: Colors.amber,
                        letterSpacing: 3.0,
                        fontFamily: 'Pacifico',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1B5E20)),
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
                    style: TextStyle(fontFamily: 'Roboto', letterSpacing: 2.0),
                  ),
                ),
//Phone no container
                Container(
                  padding: EdgeInsets.fromLTRB(110.0, 0.0, 0.0, 2.5),
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
//                    margin: const EdgeInsets.all(8.0),
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
                ),
//Email container
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.5),
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
                            fontFamily: 'Roboto', fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //              Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
////Image Container
//                  Container(
//                    padding:
//                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
//                    child: CircleAvatar(
//                      radius: 50.0,
//                      backgroundColor: Colors.orange,
//                      backgroundImage: AssetImage('assets/images/poolside.jpg'),
//                    ),
//                  ),
////Name container
//                  Container(
//                    margin: EdgeInsets.all(1.0),
//                    padding: EdgeInsets.all(3.0),
//                    decoration: BoxDecoration(
//                      border: Border.all(color: Colors.transparent, width: 5.0),
//                    ),
//                    child: Text(
//                      "JUDE OKOROAFOR",
//                      style: TextStyle(
//                          backgroundColor: Colors.amber,
//                          letterSpacing: 3.0,
//                          fontFamily: 'Pacifico',
//                          fontSize: 17.0,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey[800]),
//                    ),
//                  ),
////Stack container
//                  Container(
//                    margin: EdgeInsets.all(1.0),
//                    padding: EdgeInsets.all(13.0),
//                    decoration: BoxDecoration(
//                        border: Border.all(color: Colors.transparent)),
//                    child: Text(
//                      "FLUTTER DEVELOPER",
//                      style:
//                          TextStyle(fontFamily: 'Roboto', letterSpacing: 2.0),
//                    ),
//                  ),
////Phone no container
//                  Container(
//                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.5),
//                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        bottom: BorderSide(width: 1.2),
//                      ),
//                    ),
//                    child: Row(
//                      children: <Widget>[
//                        Icon(
//                          Icons.phone,
//                          size: 25.0,
//                          color: Colors.white,
//                        ),
//                        SizedBox(
//                          width: 10.0,
//                        ),
//                        Text(
//                          "+234-813-204-6932",
//                          style: TextStyle(
//                              fontFamily: 'Roboto',
//                              fontWeight: FontWeight.w300),
//                        ),
//                      ],
//                    ),
//                  ),
////Email container
//                  Container(
//                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.5),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        bottom: BorderSide(width: 1.2),
//                      ),
//                    ),
//                    child: Row(
//                      children: <Widget>[
//                        Icon(
//                          Icons.mail,
//                          size: 25.0,
//                          color: Colors.white,
//                        ),
//                        SizedBox(
//                          width: 10.0,
//                        ),
//                        Text(
//                          "judeokoroafor@gmail.com",
//                          style: TextStyle(
//                              fontFamily: 'Roboto',
//                              fontWeight: FontWeight.w300),
//                        ),
//                      ],
//                    ),
//                  ),
          ],
        ),
//        body: SafeArea(
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
////Image Container
//                  Container(
//                    padding:
//                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
//                    child: CircleAvatar(
//                      radius: 50.0,
//                      backgroundColor: Colors.orange,
//                      backgroundImage: AssetImage('assets/images/poolside.jpg'),
//                    ),
//                  ),
////Name container
//                  Container(
//                    margin: EdgeInsets.all(1.0),
//                    padding: EdgeInsets.all(3.0),
//                    decoration: BoxDecoration(
//                      border: Border.all(color: Colors.transparent, width: 5.0),
//                    ),
//                    child: Text(
//                      "JUDE OKOROAFOR",
//                      style: TextStyle(
//                          backgroundColor: Colors.amber,
//                          letterSpacing: 3.0,
//                          fontFamily: 'Pacifico',
//                          fontSize: 17.0,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey[800]),
//                    ),
//                  ),
////Stack container
//                  Container(
//                    margin: EdgeInsets.all(1.0),
//                    padding: EdgeInsets.all(13.0),
//                    decoration: BoxDecoration(
//                        border: Border.all(color: Colors.transparent)),
//                    child: Text(
//                      "FLUTTER DEVELOPER",
//                      style:
//                          TextStyle(fontFamily: 'Roboto', letterSpacing: 2.0),
//                    ),
//                  ),
////Phone no container
//                  Container(
//                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.5),
//                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        bottom: BorderSide(width: 1.2),
//                      ),
//                    ),
//                    child: Row(
//                      children: <Widget>[
//                        Icon(
//                          Icons.phone,
//                          size: 25.0,
//                          color: Colors.white,
//                        ),
//                        SizedBox(
//                          width: 10.0,
//                        ),
//                        Text(
//                          "+234-813-204-6932",
//                          style: TextStyle(
//                              fontFamily: 'Roboto',
//                              fontWeight: FontWeight.w300),
//                        ),
//                      ],
//                    ),
//                  ),
////Email container
//                  Container(
//                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.5),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        bottom: BorderSide(width: 1.2),
//                      ),
//                    ),
//                    child: Row(
//                      children: <Widget>[
//                        Icon(
//                          Icons.mail,
//                          size: 25.0,
//                          color: Colors.white,
//                        ),
//                        SizedBox(
//                          width: 10.0,
//                        ),
//                        Text(
//                          "judeokoroafor@gmail.com",
//                          style: TextStyle(
//                              fontFamily: 'Roboto',
//                              fontWeight: FontWeight.w300),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ],
//          ),
//        ),
//        floatingActionButton: FloatingActionButton(
//            backgroundColor: Colors.orange,
//            child: Icon(Icons.share),
//            onPressed: () {}),
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(-240.0, size.height / 1.0);
    path.lineTo(size.width + 70.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
