import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlackKey extends StatefulWidget{
  bool pressed = false;
  Color pressedColor = Colors.black;
  String name ="";

  BlackKey(String whiteKeyNam){
    this.name = whiteKeyNam;
  }

  @override
  State<StatefulWidget> createState() => _BlackKeyState();

}

class _BlackKeyState extends State<BlackKey> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double displayWidth = _mediaQueryData.size.width;
    double displayHeight = _mediaQueryData.size.height;
    return
      InkWell(
          onTap: () {
            setState(() {
              setColor();
            });
          },
          child:
          Container(

              height: displayHeight -60,
              decoration: BoxDecoration(color: widget.pressedColor, borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.blueGrey),),
              child:
              Align(
                  alignment: Alignment.bottomCenter,
                  child:
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
              )
          )
      );
  }


  setColor(){
    widget.pressed = !widget.pressed;
    if(widget.pressed) widget.pressedColor = Colors.orange;
    else widget.pressedColor = Colors.black;
  }

}