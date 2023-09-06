import 'package:flutter/material.dart';
import 'dart:ui';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const CustomContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
            ),
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.amber.withOpacity(0.5),
                  Colors.amber.withOpacity(0.3),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: child,
          ),
        ],
      ),
    );
  }
}
