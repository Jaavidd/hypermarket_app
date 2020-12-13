import 'package:flutter/material.dart';
import 'package:lokbatan_market/screens/tab.dart';
import 'package:lokbatan_market/widgets/companies.dart';
import 'package:lokbatan_market/widgets/discountProducts.dart';
import 'dart:math';
import 'CardPage.dart';
import 'filials.dart';
class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> with SingleTickerProviderStateMixin{
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
  int size=10;
  ScrollController controller=ScrollController();
  bool closeTopContainer=false;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        closeTopContainer=controller.offset>50;
      });
    });


  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFE0253A),
            title: Container(
              padding: EdgeInsets.only(left: 50),
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                height: 40,
                width: 150,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.login),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notifications_active),
              )
            ],
            // leadingWidth: 10,
          ),
          drawer: Container(
            // height: MediaQuery.of(context).size.height,
            width: 250,
            // padding: EdgeInsets.only(top: 28),
            child: Drawer(
               child: MenuTab(),
            ),
          ),


        backgroundColor:   Color(0xF9F9F9F9), //Colors.grey[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardPage(),
            SizedBox(height: 20,),
          // if(!closeTopContainer)
            Container(
              padding: EdgeInsets.only(left: screenSize.width*0.05,right: screenSize.width*0.045),
              // margin: EdgeInsets.only(left:screenSize.width*0.045,right: 10,bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Faiz Endirimləri",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Hamsi",style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 20,),


            // AnimatedContainer(
            //   duration: const Duration(seconds: 1),
            //   alignment: Alignment.topCenter,
            //
            //   height: closeTopContainer ? 0 : 170,
            //   child: DiscountProducts(size: 5,height: 170.0,),
            // ),
            DiscountProducts(size: 5,height: 170.0,),
            SizedBox(height: 20,),


            SizedBox(height: 0,),
            Container(
              padding: EdgeInsets.only(left: screenSize.width*0.05,right: screenSize.width*0.045),
              // padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kampaniyalar",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Hamsi",style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(child: Companies(controller: controller))   /// companies





          ],



        )
      ),
    );
  }
}
