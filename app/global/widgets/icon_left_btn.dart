import 'package:flutter/material.dart';

class IconLeftBtn extends StatelessWidget {
  final IconData icon;
  final press;

  const IconLeftBtn({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(icon, color: Color(0xFF888888)),
      highlightColor: Color(0xFF8257e6).withOpacity(0.4),
      splashColor: Color(0xFF04d361).withOpacity(0.4),
      onTap: press,
    );
  }
}
