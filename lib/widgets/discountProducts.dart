import 'package:flutter/material.dart';
import 'package:lokbatan_market/screens/filials.dart';
class DiscountProducts extends StatelessWidget {
  final size;
  final height;
  final String imagePath;
  List images =[
    "gro.jpg",
    "gro2.jpg",
    "gro.jpg",
    "gro2.jpg",
    "gro.jpg",

  ];
   DiscountProducts({ this.size,this.imagePath,this.height}) ;
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return SingleChildScrollView(

      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            for(var i=0;i<size;i++)
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (b)=> Filials()));
                },
                child: Container(
                  // color: Colors.white,

                  margin: EdgeInsets.only(left:screenSize.width*0.045,right: 10),
                  width: 170,
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      boxShadow: [
                        // BoxShadow(
                        //   color: Color(0x693bff).withOpacity(0.1),
                        //   spreadRadius: 5,
                        //   blurRadius: 7,
                        //   offset: Offset(0, 3), // changes position of shadow
                        // ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 170,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/${images[i]}"),
                            fit: BoxFit.fill
                          ),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft:  Radius.circular(12),topRight: Radius.circular(12))
                        ),
                        ),
                      Container(
                            padding: EdgeInsets.only(left: 30,top: 10),
                            child: Text("Məhsullarimıza xüsusi endirim",))
                    ],
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}