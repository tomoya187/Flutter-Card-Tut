import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:IdCard(),
  ));
}
class  IdCard extends StatefulWidget {

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int cardLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("ID CARD"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cardLevel++;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/icon.png"),
                radius: 40,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,

              )
            ),
            SizedBox(height:10.0),
            Text(
                "My Name",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,

                )
            ),
            SizedBox(height:30.0),
            Text(
                "Current Level:",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,

                )
            ),
            SizedBox(height:10.0),
            Text(
                "$cardLevel",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,

                )
            ),
            SizedBox(height:30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "Me@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}






