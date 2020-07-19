import 'package:chatapp/message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMesssage> messages = <ChatMesssage>[];

  final TextEditingController _textEditingController = TextEditingController();

  void _handleSubmit(String text) {
    _textEditingController.clear();

    ChatMesssage message = ChatMesssage(
      text: text,
    );
    setState(() {
      messages.insert(0, message);
    });
  }

  Widget _textComposer() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:4),
        child: Row(children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Say Somthing",
              ),
              controller: _textEditingController,
              onSubmitted: _handleSubmit,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => _handleSubmit(_textEditingController.text),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            reverse: true,
            itemBuilder: (_, int index) => messages[index],
            itemCount: messages.length,
          ),
          
        ),
        Divider(height:1),
        Container(
          decoration: BoxDecoration(
            color:Theme.of(context).cardColor,
          ),
          child:_textComposer(),
        ),
      ],
    );
  }
}
