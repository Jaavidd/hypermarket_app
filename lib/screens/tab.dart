import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lokbatan_market/screens/Haqqimizda.dart';
import 'package:lokbatan_market/screens/history.dart';
import 'package:lokbatan_market/widgets/selections.dart';
import 'MusteriXidmetleri.dart';

class MenuTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFFE0253A),),
      body: Column(
        children: [
            ListTile(
              title: Text("Javid Mammadli",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Menu"),
            ),
          ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,

            children: [
              CustomTab(
                icon: Icon(Icons.accessibility_new_sharp,color: Colors.green),
                title: "Haqqımızda",
              widget: Haggimizda()),
              SizedBox(height: 5,),
              CustomTab(
                icon: Icon(Icons.campaign,color: Colors.green),
                title: "Kampaniyalar",
               widget: Yenilikler()),
              SizedBox(height: 5,),
              CustomTab(
                icon: Icon(Icons.history,color: Colors.green),
                title: "Tarixçə",
                widget: History(),),
              CustomTab(
                  icon: Icon(Icons.location_pin,color: Colors.green,) ,
                  title: "Mağazalar",
                widget: Shops(),),
              SizedBox(height: 5,),
              CustomTab(
                icon: Icon(Icons.home_repair_service,color: Colors.green),
                title: "Müştəri Xidmətləri",
                widget: MushteriXidmetler(),
              ),
              SizedBox(height: 5,),
            ],
          )
        ],
      ),
    );
  }
}
