import 'package:flutter/material.dart';

class IconView extends StatelessWidget {
  const IconView({super.key,  this.icon = Icons.arrow_back, this.onPressed});
  final IconData icon;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(.05)
      ),
      child:  IconButton(
        color: Colors.white,
        onPressed: onPressed,
        icon: Icon(
            size: 35,
            icon
        ),
      ),
    );
  }
}