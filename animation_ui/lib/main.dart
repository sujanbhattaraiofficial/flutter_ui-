import 'package:animation_ui/Animation/buttonAnimation.dart';
import 'package:animation_ui/Animation/buttonAnimationImplementation.dart';
import 'package:animation_ui/Colors/appThemeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Animation/delayedAnimation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationUi(),
    );
  }
}

class AnimationUi extends StatefulWidget {
  @override
  _AnimationUiState createState() => _AnimationUiState();
}

class _AnimationUiState extends State<AnimationUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeColors.themeAccent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top + 50,
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/youtube.png"),
            ),
            SizedBox(
              height: 50,
            ),
            DelayedAnimation(
              aniDuration: 700,
              aniOffsetX: 0.0,
              aniOffsetY: 0.35,
              delayedAnimation: 500,
              child: Text(
                "Hi",
                style: TextStyle(
                    fontSize: 20.0, color: AppThemeColors.materialTheme),
              ),
            ),
            DelayedAnimation(
              aniDuration: 700,
              aniOffsetX: 0.0,
              aniOffsetY: 0.35,
              delayedAnimation: 1000,
              child: Text("I'm Sujan Bhattarai",
                  style: TextStyle(
                      fontSize: 20.0, color: AppThemeColors.materialTheme)),
            ),
            DelayedAnimation(
              aniDuration: 700,
              aniOffsetX: 0.0,
              aniOffsetY: 0.35,
              delayedAnimation: 1500,
              child: Text("Welcome to my channel",
                  style: TextStyle(
                      fontSize: 20.0, color: AppThemeColors.materialTheme)),
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ButtonAnimationImplementation(
                buttonText: "Okay",
                delayeAni: 2000,
                onTab: () {
                  ButtonAnimation.disableButton
                      ? print("Disable true")
                      : print("I'm pressed");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
