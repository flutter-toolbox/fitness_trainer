import 'package:flutter/material.dart';

class Quest extends StatefulWidget {

  final String title;
  final String questDetails;

  Quest({Key key, this.title, this.questDetails}) : super(key: key);

  @override
  State<StatefulWidget> createState() => QuestState();

}

class QuestState extends State<Quest> {

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text(widget.title),
            subtitle: Text(widget.questDetails),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('Accept'),
                  onPressed: () => debugPrint('Quest Accepted'),
                ),
                FlatButton(
                  child: Text('Reject'),
                  onPressed: () => debugPrint('Quest Rejected'),
                )
              ],
            ),
          )

        ],
      ),
    );
  }

}