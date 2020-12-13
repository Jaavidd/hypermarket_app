import 'package:flutter/material.dart';

class Haggimizda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Haqqimizda"),
          backgroundColor: Color(0xFFE0253A),
        ),
      ),
    );
  }
}

class Yenilikler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Yenilikler"),
          backgroundColor: Color(0xFFE0253A),
        ),
      ),
    );
  }
}

class Shops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Mağazalar"),
          backgroundColor: Color(0xFFE0253A),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            for(var i=0;i<30;i++)
              Container(
                width: 343,
                height: 137,
                margin: EdgeInsets.only(
                  left: screenSize.width*0.045,
                  right: screenSize.width*0.045,
                  top: screenSize.height*0.039
                ),
                decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x693bff).withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Container(
                      height: 139,
                      width: 167,
                      // child: Text("A"),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                        image: DecorationImage(
                        image: AssetImage("assets/images/market.jpg"),
                          fit: BoxFit.fill
                      )
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 10,top: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mərkəz mağaza",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          SizedBox(height: 7,),
                          Row(
                            children: [
                              Icon(Icons.edit_location_rounded,color: Colors.grey[600],),
                              Text("Lokbatan r. 38"),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Text("İş vaxtları: 09:00/19:00"),
                          SizedBox(height: 9,),
                          Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Text("İş günləri: hər gün"))

                        ],
                      ),
                    )
                  ],
                ),
              )


          ],
        )
      ),
    );
  }
}
