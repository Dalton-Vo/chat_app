import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 32,
                color: Color(0xFF087949).withOpacity(0.05))
          ]),
      child: SafeArea(
        child: Row(children: [
          Icon(
            Icons.mic,
            color: kPrimaryColor,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.03),
                borderRadius: BorderRadius.circular(40)),
            child: Row(
              children: [
                Icon(
                  Icons.sentiment_satisfied_alt_outlined,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.6),
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type Message",
                    border: InputBorder.none,
                  ),
                )),
                Icon(
                  Icons.attach_file,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.6),
                ),
                SizedBox(
                  width: kDefaultPadding / 4,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.6),
                ),
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
