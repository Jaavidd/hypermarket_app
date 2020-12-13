

import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FlatButton(
          onPressed: (){
            // Navigator.push(context, route)
          },
          child: Icon(Icons.menu, color: Colors.white,)

    );

  }
}
