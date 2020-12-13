
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lokbatan_market/screens/filials.dart';

class Companies extends StatelessWidget {
  final ScrollController controller;
  List images=[
    "panoramic1.jpg",
    "panoramic2.jpg",
    "panoramic3.jpg",
    "panoramic1.jpg",
    "panoramic2.jpg",
    "panoramic1.jpg",
    "panoramic2.jpg",
    "panoramic3.jpg",
    "panoramic1.jpg",
    "panoramic2.jpg",

  ];
  Companies({this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      child: SingleChildScrollView(
        controller: controller,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(

          children: [
            for(var i=0;i<10;i++)
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (b)=> Filials()));
                },
                child: Container(
                  child: Center(child: Text("Mövzu Text",style: TextStyle(color: Colors.white,
                  fontSize: 20),)

                  ),
                  height: 65,
                  width: 343,
                  margin: EdgeInsets.only(bottom: 14),
                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: AssetImage("assets/images/${images[i]}"),
                    fit: BoxFit.cover),
                      color: Colors.redAccent,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x693bff).withOpacity(0.05),
                          spreadRadius: 5,
                          blurRadius: 1,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
