import 'package:demo_chat_app/constants.dart';
import 'package:demo_chat_app/screens/chats/chat_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:pushable_button/pushable_button.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final shadow = BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(0, 2),
  );
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(
                // MediaQuery.of(context).platformBrightness == Brightness.light
                //     ? "assets/images/dark_img.png"
                //     : "assets/images/light_img.png",
                // height: 180,
                  isDarkMode
                ? "assets/images/dark_img.png"
                : "assets/images/light_img.png",
                fit: BoxFit.cover,
                height: 250,
              ),

              PushableButton(
                  child: Text('ENROLL NOW' ),
                  height: 60,
                  elevation: 10,
                  hslColor: HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
                  shadow: shadow,
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder:(context) =>const ChatsScreen(), )),),
              SizedBox(height: kDefaultPadding *1.5,),

              PushableButton(
                    child: const Text('ADD TO BASKET', ),
                    height: 60,
                    elevation: 8,
                    hslColor: const HSLColor.fromAHSL(1.0, 195, 1.0, 0.43),
                    shadow: shadow,
                    onPressed: () {}),
              Spacer(flex:2),
            ],
          ),
        ),
      ),
    );
  }
}

// class SigninOrSignupScreen extends StatelessWidget {
//   const SigninOrSignupScreen({ Key key }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final shadow = BoxShadow(
//       color: Colors.grey.withOpacity(0.5),
//       spreadRadius: 5,
//       blurRadius: 7,
//       offset: const Offset(0, 2),
//   );
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//           constraints: BoxConstraints.expand(),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//             child: Column(
//               children: [
//                 Spacer(flex:2),
//                 Image.asset(
//                   MediaQuery.of(context).platformBrightness == Brightness.light ? "assets/images/Logo_light.png" : "assets/images/Logo_dark.png", height: 150,),
                
//                 Spacer(),
//               PushableButton(
//                   child: Text('ENROLL NOW' ),
                  
//                   height: 60,
//                   elevation: 10,
//                   hslColor: HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
//                   shadow: shadow,
//                   onPressed: () {},),
//               SizedBox(height: kDefaultPadding *1.5,),
//               PushableButton(
//                     child: const Text('ADD TO BASKET', ),
//                     height: 60,
//                     elevation: 8,
//                     hslColor: const HSLColor.fromAHSL(1.0, 195, 1.0, 0.43),
//                     shadow: shadow,
//                     onPressed: () {}),
//               Spacer(flex:2),
              
//               ],
//             ),
//           ),
//         )
//       ),
//     );
//   }
// }