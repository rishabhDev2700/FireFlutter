import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: must_be_immutable
class ProjectTile extends StatefulWidget {
  String _projectname;
  String _member1;
  String _member2;
  String _member3;
  String _member4;
  String _member5;
  ProjectTile(String name,
      {String member1 = "",
      String member2 = "",
      String member3 = "",
      String member4 = "",
      String member5 = ""}) {
    _projectname = name;
    _member1 = member1;
    _member2 = member2;
    _member3 = member3;
    _member4 = member4;
    _member5 = member5;
  }
  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ExpansionTile(
      tilePadding: EdgeInsets.all(40.0),
      title: Text(
        widget._projectname,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      childrenPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Team :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(widget._member1),
              Text(widget._member2),
            ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(widget._member4),
            Text(widget._member5),
            Text(widget._member3),
          ],
        ),
        new CircularPercentIndicator(
          radius: 90.0,
          lineWidth: 9.0,
          percent: 0.60,
          center: new Text("60%"),
          progressColor: Colors.deepPurpleAccent,
        )
      ],
    ));
  }
}
