import 'package:flutter/material.dart';
import '../AppWidgets/project_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        title: Text(
          "TeamNet",
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: ListView(children: <Widget>[
        DrawerHeader(
          child: Row(
            children: [
              CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.znFssvSzhj0KUfD4-NT0HQHaHa?w=125&h=128&c=7&o=5&dpr=1.1&pid=1.7"),
                  radius: 40.0),
              Text("UserName", style: TextStyle(fontSize: 25)),
            ],
          ),
          decoration: BoxDecoration(color: Colors.blueGrey),
        ),
        FlatButton(
            height: 100.0,
            onPressed: () {
              Navigator.pushNamed(context, "/settings");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Settings"), Icon(Icons.settings)],
            ))
      ])),
      body: ListView(
        children: <Widget>[
          ProjectTile("Firm Management System",
              member1: "Rishabh",
              member2: "Anurag",
              member3: "adiyanthy",
              member4: "Sajal",
              member5: "shivam"),
          ProjectTile("Firm Management System",
              member1: "Rishabh",
              member2: "Anurag",
              member3: "adiyanthy",
              member4: "Sajal",
              member5: "shivam"),
          ProjectTile("Firm Management System",
              member1: "Rishabh",
              member2: "Anurag",
              member3: "adiyanthy",
              member4: "Sajal",
              member5: "shivam"),
          ProjectTile("Firm Management System",
              member1: "Rishabh",
              member2: "Anurag",
              member3: "adiyanthy",
              member4: "Sajal",
              member5: "shivam"),
          ProjectTile("Firm Management System",
              member1: "Rishabh",
              member2: "Anurag",
              member3: "adiyanthy",
              member4: "Sajal",
              member5: "shivam"),
          ProjectTile("Firm Management System",
              member1: "Rishabh",
              member2: "Anurag",
              member3: "adiyanthy",
              member4: "Sajal",
              member5: "shivam")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {
          Navigator.pushNamed(context, "/add_project");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
