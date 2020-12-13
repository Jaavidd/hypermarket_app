import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool outlineBtn;
  final bool loading;
  CustomButton({this.text, this.onPressed, this.outlineBtn,this.loading});

  @override
  Widget build(BuildContext context) {
    bool _outlineBtn=outlineBtn ?? false;
    bool _isLoading=loading ?? false;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 65.0,
        decoration: BoxDecoration(
          color: _outlineBtn ? Colors.transparent : Colors.redAccent,
          border: Border.all(
            color: Colors.white,
            width: 2.0,

          ),
          borderRadius: BorderRadius.circular(12.0,),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0
        ),
        child: Stack(
          children: [
            Visibility(
              visible: _isLoading ? false : true,
              child: Center(
                child: Text(
                    text ?? "Text",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: _outlineBtn ? Colors.black : Colors.white,
                        fontWeight:  FontWeight.w600

                    )),
              ),
            ),
            Visibility(
              visible: _isLoading,
              child: Center(
                child: SizedBox(
                    height: 30,width: 30.0,
                    child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
