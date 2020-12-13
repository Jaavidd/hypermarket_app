
import 'package:flutter/material.dart';
import 'package:lokbatan_market/widgets/custom_button.dart';
import 'package:lokbatan_market/widgets/custom_input.dart';

class MushteriXidmetler extends StatefulWidget {
  @override
  _MushteriXidmetlerState createState() => _MushteriXidmetlerState();
}

class _MushteriXidmetlerState extends State<MushteriXidmetler>  with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;

  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 300.0, end: 50.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
          appBar: AppBar(
              title: Text("Müştəri Xidmətləri"),
              backgroundColor: Color(0xFFE0253A),
            ),
              body:  Container(
                width: double.infinity,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 24.0,
                        right: 240
                      ),
                      child: FlatButton(onPressed: null, child: Text("Bizimlə Əlaqə",
                      style: TextStyle(color: Colors.transparent,

                        shadows: [
                          Shadow(
                              color: Colors.red,
                              offset: Offset(0, -5))
                        ],

                        decoration:
                        TextDecoration.underline,
                        decorationColor: Colors.redAccent,
                        decorationThickness: 4,
                        // decorationStyle:
                        // TextDecorationStyle.dashed,
                      ),))
                    ),
                    SizedBox(height: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 27),
                            child: Text("Ad Soyad",style: TextStyle(fontWeight: FontWeight.bold),)),
                        CustomInput(
                          hintText: "Ad Soyad . . .",

                          onSubmit: (value){
                            // _passwordFocusNode.requestFocus();
                          },
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 10,),
                        Container(
                            padding: EdgeInsets.only(left: 27),
                            child: Text("Telefon nömrəniz",style: TextStyle(fontWeight: FontWeight.bold),)),
                        CustomInput(
                          hintText: "+994 55 999 99 99",
                          onChanged: (value){
                            // _registerPassword=value;
                          },
                          focusNode: null,
                          isPasswordField: true,
                          onSubmit: (value){
                            // _submitForm();
                          },
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 27,top: 15),
                            child: Text("Mövzu",style: TextStyle(fontWeight: FontWeight.bold),)),
                        CustomInput(
                          hintText: "...",
                          givenHeight: 110,
                        ),

                        CustomButton(
                          text: "Göndər",
                          onPressed: (){
                            // setState(() {
                            //   _submitForm();
                            // });
                            },
                          loading: null,
                        )
                      ],
                    ),

                  ],
                ),
              ),
      ),
    );

  }
}
