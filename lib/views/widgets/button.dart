import 'package:flutter/material.dart';

import '../../constant.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading=false, required this.sign, required this.width, required this.isWidth});
  final String sign;
  final void Function()? onTap;
  final bool isLoading;
  final double width;
  final bool isWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: isWidth ? width : MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: Color(0xff9395D3),
          borderRadius: BorderRadius.circular(15),
        ),
        child:  Center(
          child: isLoading ?  const SizedBox(
            height: 28,
            width: 28,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ): Text(
            sign,
            style: TextStyle(
                fontSize:22,
                color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
}