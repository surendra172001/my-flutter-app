import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: NinjaCard(),
      ),
    );

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int _ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text('Ninja ID'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/linkedin.jpeg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.red,
            ),
            Text(
              'Name',
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Surendra Pandey',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                fontFamily: 'ZCOOLKuaiLe',
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Current Level',
              // style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$_ninjaLevel',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                fontFamily: 'IndiFlower',
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('sap172001@gmail.com'),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      // print('This will increment the level');
                      setState(() {
                        _ninjaLevel += 1;
                      });
                    },
                    icon: Icon(Icons.add),
                    label: Text('Increase level')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
