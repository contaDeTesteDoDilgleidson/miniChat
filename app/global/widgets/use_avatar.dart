import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/app/theme/app_theme.dart';

class UseAvatar extends StatelessWidget {
  final double radius;
  final press;

  const UseAvatar({
    Key? key,
    required this.radius,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CircleAvatar(
        backgroundColor: Color(0xFF8257e6),
        radius: radius,
        child: Icon(
          CupertinoIcons.person,
          color: appThemeData.primaryColor,
        ),
      ),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: press,
    );
  }
}
