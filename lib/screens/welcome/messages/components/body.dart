import 'package:demo_chat_app/constants.dart';
import 'package:demo_chat_app/models/Chat.dart';
import 'package:demo_chat_app/screens/welcome/messages/components/chat_input_field.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => Message())),
        ChatInputField()
      ],
    );
  }
}

class Message extends StatelessWidget {
  const Message({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Chat Text");
  }
}
