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

//Purpose of wrapping everything in #row and #column
//So it will be centered on cross axis
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
                    "Jude Okoroafor",
                    style: TextStyle(
//                        backgroundColor: Colors.amber,
                        letterSpacing: 3.0,
                        fontFamily: 'Pacifico',
                        fontSize: 30.0,
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
                SizedBox(
                  height: 20.0,
                  width: 100.0,
                  child: Divider(color: Colors.teal),
                ),
//Phone no container

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFF8BC34A),
                    ),
                    title: Text(
                      "+234 813 204 6932",
                      style: TextStyle(
                          fontFamily: 'Roboto', fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
//Email container
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color(0xFF8BC34A),
                    ),
                    title: Text(
                      "judeokoroafor@gmail.com",
                      style: TextStyle(
                          fontFamily: 'Roboto', fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

// To control the vertical level / height of the clipper
    path.lineTo(-750.0, size.height / 1.0);

    path.lineTo(size.width + 200.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
