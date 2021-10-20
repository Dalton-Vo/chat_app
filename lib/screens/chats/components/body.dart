import 'package:demo_chat_app/components/filled_outline_button.dart';
import 'package:demo_chat_app/constants.dart';
import 'package:demo_chat_app/models/Chat.dart';
import 'package:demo_chat_app/screens/welcome/messages/messages_people.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          child: Row(
            children: [
              FillOutlineButton(
                press: (){}, 
                text: "Recent message"
                ),
              SizedBox(width:kDefaultPadding),
              FillOutlineButton(
                press: (){}, 
                text: "Active",
                isFilled: false,
                )
            ],
          ),
        ),
        Expanded(child: ListView.builder(
          //Dùng để liệt kê số người dùng đã được tạo trong models
          itemCount: chatsData.length,
          itemBuilder: (context, index)=> 
            ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(context, MaterialPageRoute(builder:(context) => MessageWithPeople() )) ,
              )
          )
        )
      ],

    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key key, 
   @required this.chat, 
   @required this.press
  }) : super(key: key);
  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    //InkWell dùng để tạo hiệu ứng khi mình nhấn vào khung chat
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding *0.75),
        child: Row(
          children: [
            //Avatar of users
            Stack(
              children: [
                  CircleAvatar(
                  radius:  24,
                  backgroundImage: AssetImage(chat.image) ,
                ),
                if(chat.isActive)
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor, width: 3
                        )
                      ),
                      ),
                  )
              ],
            ),
            //MEssage and name
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(chat.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height:  8,),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        chat.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              )
              ),
            Column(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(chat.time))
              ],
              )
          ],
    
        ),
      ),
    );
  }
}