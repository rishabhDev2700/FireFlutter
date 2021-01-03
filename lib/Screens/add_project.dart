import 'package:flutter/material.dart';

class AddProject extends StatefulWidget {
  @override
  _AddProjectState createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Add Project",
                style: TextStyle(color: Colors.white, fontSize: 35)),
            centerTitle: true,
            toolbarHeight: 100,
            leading: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_rounded),
            )),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.group_work_outlined),
                  labelText: "Project Name",
                  hintText: "What are you going to name your Project"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 20,
              child: Text("Your Team:"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Your Name",
                  hintText: "Project Leader"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person_add),
                  labelText: "Member Name",
                  hintText: "Your Genius team member"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person_add),
                  labelText: "Member Name",
                  hintText: "Your Genius team member"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person_add),
                  labelText: "Member Name",
                  hintText: "Your Genius team member"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person_add),
                  labelText: "Member Name",
                  hintText: "Your Genius team member"),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: 100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.add),
                    Text("Add Project"),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
