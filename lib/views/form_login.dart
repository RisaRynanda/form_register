import 'package:flutter/material.dart';
import 'package:form_register/widget/Nav/login_nav.dart';
import 'package:form_register/widget/button/auth-button.dart';
import 'package:form_register/widget/button/button-sign.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text("Login to your account"),
                  Padding(padding: EdgeInsets.only(top: 30.0)),
                  Container(
                    child: Form(
                        child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Username or Email",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Password",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: SignButton(
                      name: "SIGN IN",
                      type: "in",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Forgot password ?"),
                        GestureDetector(
                          child: Text(
                            'Get help here',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          ),
                          onTap: () {
                            print("HI");
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Continue with",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        AuthButton(
                            onTap: () {},
                            label: "Login With Google",
                            imgUrl: "assets/icons/google.svg"),
                        AuthButton(
                            onTap: () {},
                            label: "Login With Appel",
                            imgUrl: "assets/icons/apple.svg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have account ?"),
                        GestureDetector(
                          child: Text(
                            '   SIGN UP',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: Colors.red),
                          ),
                          onTap: () {
                            print("HI");
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
