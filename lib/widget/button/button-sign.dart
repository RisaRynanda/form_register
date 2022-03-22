import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  Function onTap;
  String name;
  String type;

  SignButton(
      {Key? key, required this.onTap, required this.name, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.0),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: type == 'in' ? Colors.blue : Colors.red,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto"),
              ),
            ],
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
