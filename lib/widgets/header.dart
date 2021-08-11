import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constants/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hello, John",
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: 20,
          ),
        ),
        Icon(
          CupertinoIcons.bell_fill,
          color: kSecondaryColor,
        )
      ],
    );
  }
}
