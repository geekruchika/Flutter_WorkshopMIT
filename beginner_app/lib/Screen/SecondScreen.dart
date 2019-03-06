import 'package:beginner_app/Screen/ThirdScreen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  // final _formKey = GlobalKey<FormState>();

  Widget button(
      {@required String text,
      @required Function onClick,
      @required Color color,
      Color splashColor}) {
    return Container(
      height: 40,
      width: 300,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          onTap: onClick,
          splashColor: splashColor ?? Colors.grey,
          borderRadius: BorderRadius.circular(40),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white, fontSize: 16, letterSpacing: 1),
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextInput(String hint,
      {TextInputType inputType,
      bool obscure,
      Function onChange,
      Function onSubmit,
      Function validator}) {
    return TextFormField(
      textAlign: TextAlign.center,
      validator: validator,
      keyboardType: inputType ?? TextInputType.text,
      obscureText: obscure ?? false,
      decoration: InputDecoration(
          hintText: hint,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0)),
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(0, 255, 0, 1), width: 2.0)),
          focusedErrorBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(255, 0, 0, 1), width: 2.0)),
          hintStyle: TextStyle(
              color: Colors.black,
              letterSpacing: 2,
              fontSize: 18,
              fontWeight: FontWeight.w400)),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.jpeg"), fit: BoxFit.cover),
              ),
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Center(
                child: Form(
                  //  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      customTextInput("EMAIL",
                          inputType: TextInputType.emailAddress,
                          validator: (str) {}),
                      SizedBox(
                        height: 40,
                      ),
                      customTextInput("PASSWORD", obscure: true,
                          validator: (str) {
                        // if (str.toString().trim().length < 8) {
                        //   return "Password Should Have At Least 8 Characters";
                        // }
                        return null;
                      }),
                    ],
                  ),
                ),
              ),
            ),
            button(
                color: Colors.black,
                onClick: () {
                  // _formKey.currentState.validate();

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                text: "SIGN IN"),
            SizedBox(
              height: 50,
            ),
            Text(
              "Forgot Your Password?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),

              
            ),
            Scrollable(
              viewportBuilder:(context, index) {
                return Text("hhhhhh");
              }

            )
          ],
        ),
      ),
    );
  }
}
