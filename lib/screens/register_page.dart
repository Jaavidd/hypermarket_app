import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lokbatan_market/widgets/custom_button.dart';
import 'package:lokbatan_market/widgets/custom_input.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  //Build and alert dialog to display error
  Future<void> _alertDialogBuilder(String error) async {
    print(error.toString());
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Error"),
            content: Container(
              child: Text(error),
            ),
            actions: [
              FlatButton(
                  child: Text("close dialog"),
              onPressed: () {
                    Navigator.pop(context);
              },)
            ],
          );
        });
  }

  // create new user account



  bool _registerFromLoading=false;

  //form input field values
  String _registerEmail = "";
  String _registerPassword="";
  // focus mode for input field
  FocusNode _passwordFocusNode;
  @override
  void initState() {
    _passwordFocusNode=FocusNode();
    super.initState();
  }
  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 24.0,
              ),
              child: Text(
                "Create a New Account",
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              children: [
                CustomInput(
                  hintText: "Email . . .",
                  onChanged: (value){
                    _registerEmail=value;
                  },
                  onSubmit: (value){
                    _passwordFocusNode.requestFocus();
                  },
                  textInputAction: TextInputAction.next,
                ),
                CustomInput(
                  hintText: "Password . . .",
                  onChanged: (value){
                    _registerPassword=value;
                  },
                  focusNode: _passwordFocusNode,
                  isPasswordField: true,

                ),
                CustomButton(
                  text: "Create New Account", loading: _registerFromLoading,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
              ),
              child: CustomButton(
                text: "Back To Login",
                onPressed: () {
                  Navigator.pop(context);
                },
                outlineBtn: true,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
