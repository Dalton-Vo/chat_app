import 'package:demo_chat_app/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class MessageWithPeople extends StatelessWidget {
  const MessageWithPeople({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          //Button to back previous page
          BackButton(),

          //Avatar partner
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png")
          ),
          SizedBox(width: kDefaultPadding *0.75,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Tạ Thành Trung", style: TextStyle(fontSize: 16),),
              Text("Active 3m ago", style: TextStyle(fontSize: 12),)
            ],
          )
        ],
      ),
      // Icon 
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam),),
        SizedBox(width: kDefaultPadding/2,)
      ],
      
    );
  }
}

// class MessageWithPeople extends StatefulWidget {
//   const MessageWithPeople({ Key key }) : super(key: key);

//   @override
//   _MessageWithPeopleState createState() => _MessageWithPeopleState();
// }

// class _MessageWithPeopleState extends State<MessageWithPeople> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//     );
//   }
// }