import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          // ButtonAny(
          //   title: "SIGN IN",
          //   onTap: () {
          //     print("Hi");
          //   },
          // ),
          SizedBox(height: 15),
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
                        fontWeight: FontWeight.w900, color: Colors.blue),
                  ),
                  onTap: () {
                    print("HI");
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
         
        ],
      ),
    );
  }
}
