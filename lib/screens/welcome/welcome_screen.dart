import 'package:demo_chat_app/constants.dart';
import 'package:demo_chat_app/screens/signinOrSignUp/signin_or_signup_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key key }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: SafeArea(
          child: Column(
            children:[
              Spacer(flex: 2,),
              Image.asset("assets/images/welcome_image.png"),
              Spacer(flex: 3,),
              Text(
                "Welcome to our freedom \n messaging app",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "Freedom talk any person of your \n mother language.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.64),
                ),
              ),
              Spacer(flex: 3,),
              FittedBox(
                child: TextButton(
                 onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SigninOrSignupScreen(),
                        ),
                      ), 
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.64),
                      ),
                    ),
                    SizedBox(width: kDefaultPadding/4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.64),
                    )
                  ],
                )
                ),
              )
            ],
          ),
        ),
      
    );
  }
}