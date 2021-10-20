class Chat{
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({this.name, this.lastMessage, this.time, this.image, this.isActive});
}

List chatsData = [
  Chat(
    name: "Tạ Thành Trung",
    lastMessage: "Hope u r doning well",
    image: "assets/images/user_2.png",
    time: "3m ago",
    isActive: false
  ),
    Chat(
    name: "Trần Anh Quang",
    lastMessage: "Hello World",
    image: "assets/images/user_3.png",
    time: "4m ago",
    isActive: true
  ),
    Chat(
    name: "Trần Ngọc An",
    lastMessage: "Do u have update",
    image: "assets/images/user_4.png",
    time: "6m ago",
    isActive: false
  ),
    Chat(
    name: "Killer John",
    lastMessage: "Hope u r doning well",
    image: "assets/images/user_5.png",
    time: "5d ago",
    isActive: false
  ),
    Chat(
    name: "Kim Mỹ Nhi",
    lastMessage: "Ok man",
    image: "assets/images/user_2.png",
    time: "3m ago",
    isActive: false
  ),
    Chat(
    name: "Tràn Tùng Anh",
    lastMessage: "Hey bitch",
    image: "assets/images/user_3.png",
    time: "9m ago",
    isActive: true
  )
];