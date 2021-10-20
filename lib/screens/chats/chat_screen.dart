import 'package:demo_chat_app/constants.dart';
import 'package:demo_chat_app/screens/chats/components/body.dart';
import 'package:demo_chat_app/screens/welcome/messages/messages_people.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({ Key key }) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  int _selectedIndex = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar() ,
      body: Body(),
      //Button for adding user
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value){
          setState(() {
            _selectedIndex = value;
          });
        },
        //Giúp cho khi nhấn vào các nút sẽ giữ nguyên vị trí
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(icon: 
          CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage("assets/images/user_2.png")),label:"Profile")
        ],
      ),
      );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: Text("Chats"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search)
         
         )
      ],
      );
  }
}