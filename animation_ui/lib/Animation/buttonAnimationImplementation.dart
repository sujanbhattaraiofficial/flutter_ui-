import 'package:animation_ui/Animation/buttonAnimation.dart';
import 'package:animation_ui/Colors/appThemeColors.dart';
import 'package:flutter/material.dart';

class ButtonAnimationImplementation extends StatefulWidget {
  final int delayeAni;
  final String buttonText;
  final Function onTab;

  const ButtonAnimationImplementation(
      {Key key, this.delayeAni, this.buttonText, this.onTab})
      : super(key: key);
  @override
  _ButtonAnimationImplementationState createState() =>
      _ButtonAnimationImplementationState();
}

class _ButtonAnimationImplementationState
    extends State<ButtonAnimationImplementation> {
  bool isPressed = false;
  double _scale = 0.986;

  void onPressedUp(PointerUpEvent event) {
    setState(() {
      isPressed = false;
    });
  }

  void onPressedDown(PointerDownEvent event) {
    setState(() {
      isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ButtonAnimation(
      delayTime: widget.delayeAni,
      child: GestureDetector(
        onTap: widget.onTab,
        child: Listener(
          onPointerUp: onPressedUp,
          onPointerDown: onPressedDown,
          child: isPressed
              ? Transform.scale(
                  scale: _scale,
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 3.0,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: AppThemeColors.materialTheme,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Center(
                      child: Text(
                        widget.buttonText,
                        style: TextStyle(
                          color: AppThemeColors.themeAccent,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                        offset: Offset(0, 10),
                      ),
                    ],
                    color: AppThemeColors.materialTheme,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      widget.buttonText,
                      style: TextStyle(
                        color: AppThemeColors.themeAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
