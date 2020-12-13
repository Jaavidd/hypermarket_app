import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lokbatan_market/screens/filials.dart';

class CustomTab extends StatelessWidget {
  final Icon icon;
  final String title;
  final Widget widget;
  CustomTab({ this.icon, this.title,this.widget}) ;
  @override
  Widget build(BuildContext context) {
    Widget _widget=widget ?? Filials();
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (b)=> _widget));
      },
      child: FlatButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              SizedBox(width: 30,),
              Center(
                child: Text(title,style: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black
                ),),
              ),

              // Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
