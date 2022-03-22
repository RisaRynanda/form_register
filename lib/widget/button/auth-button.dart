import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AuthButton extends StatelessWidget {
  Function onTap;
  String label;
  String imgUrl;
  AuthButton(
      {Key? key,
      required this.onTap,
      required this.label,
      required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.0),
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: Get.width,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Stack(
                children: [
                  SvgPicture.asset(imgUrl),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(label)],
                  )
                ],
              ),
            )),
      ),
      onTap: () {},
    );
  }
}
