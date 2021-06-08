import 'package:flutter/material.dart';
import '../data/data.dart';
import './aboutpage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://seeklogo.com/images/A/adobe-photoshop-cc-circle-logo-3BE8AF841D-seeklogo.com.png",
                ),
                radius: 50.0,
              ),
            ),
            DrawerHeader(
              padding: EdgeInsets.all(0.0),
              child: Container(
                color: Colors.tealAccent,
                child: Center(
                  child: Text(
                    "Photoshop Shortcut",
                    style: TextStyle(color: Colors.black, fontSize: 25.0),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            new ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AboutPage();
                  }),
                );
              },
              leading: Icon(Icons.info_outline),
              title: Text("About "),
            ),
            ListTile(
              onTap: () {
                launch("https://apilsubedi.com.np");
              },
              leading: Icon(Icons.web),
              title: Text("Developer Info"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Adobe PhotoShop Shortcuts"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }),
              );
            },
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2.0,
          );
        },
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 18.0,
              backgroundColor: Colors.lightBlue,
              child: Text(
                " ${index + 1}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15.0),
              ),
            ),
            title: Text(data[index]["key"]),
            subtitle: Text(data[index]["use"]),
          );
        },
      ),
    );
  }
}
