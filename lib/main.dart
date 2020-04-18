
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: PremCard(),
));

class PremCard extends StatefulWidget {
  @override
  _PremCardState createState() => _PremCardState();
}

class _PremCardState extends State<PremCard> {

  int premLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Prem ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            premLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pp.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Prem Singh',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT PREM LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                        Icons.remove,
                        color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        (premLevel == 0)? premLevel: premLevel -= 1;
                      });
                    },
                ),
                Text(
                  '$premLevel',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      premLevel += 1;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5.0,),
                Text(
                  'premsinghsodha7@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}



