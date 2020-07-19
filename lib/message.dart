import 'package:flutter/material.dart';

class ChatMesssage extends StatefulWidget {
  final String text;
  ChatMesssage({this.text});

  @override
  _ChatMesssageState createState() => _ChatMesssageState();
}

class _ChatMesssageState extends State<ChatMesssage> {
  String name="Anand";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16),
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            child:Text(name[0]),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Text(name,style: Theme.of(context).textTheme.subtitle2,),
              Container(
                margin: EdgeInsets.only(top: 5),
              child:Text(widget.text),
              )
            ],
          ),
        ),
      ],
    
    );
  }
}