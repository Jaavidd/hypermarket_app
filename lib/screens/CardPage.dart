import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CardPage extends StatefulWidget {

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
    String _data="";
   _scan() async{
     await FlutterBarcodeScanner.scanBarcode("#000000", "Cancel", true, ScanMode.BARCODE)
     .then((value) =>  setState((){_data=value; }  ));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
          _scan();
        // FlutterBarcodeScanner.getBarcodeStreamReceiver("#ff6666", "Cancel", false, ScanMode.BARCODE)
        //     .listen((barcode) {
        //    barcode to be used
        // });
      },
      child: Column(
        children: [
          Text(_data ?? ""),
          Container(
            margin: EdgeInsets.only(
                left: screenSize.width*0.045,
                right: screenSize.width*0.045,
                top: screenSize.height*0.039

          ),
          // color: Colors.white,
          // padding: EdgeInsets.only(top: 1,left:100),
          width: 380,
          height: screenSize.height * 0.25,
          // child:
          // Center(child: Text("Kart",style: TextStyle(fontWeight: FontWeight.bold),)),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/kard.png"
                  ),
                  fit: BoxFit.fill
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400].withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFFE0253A)
          ),
            ),
        ],
      ),
    );
  }
}
