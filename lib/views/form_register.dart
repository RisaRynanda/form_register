import 'package:flutter/material.dart';
import 'package:form_register/widget/button/auth-button.dart';
import 'package:form_register/widget/button/button-sign.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text("Create your account"),
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  Container(
                    child: Form(
                        child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Username or Email",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Password",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Re - type password",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: SignButton(
                      name: "SIGN UP",
                      type: "out",
                      onTap: () {},
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
                        Text("Already have account ?"),
                        GestureDetector(
                          child: Text(
                            '   SIGN IN HERE ',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
