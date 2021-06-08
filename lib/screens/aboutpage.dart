import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About us'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: (Text(
              "This is the Application where you can find the shortcuts keys for using Adobe PhotoShop",
              style: TextStyle(fontSize: 16.0),
            )),
          )),
          new Card(
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: Text("this is the main "),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go Back"),
            color: Colors.tealAccent,
          ),
        ],
      ),
    );
  }
}
