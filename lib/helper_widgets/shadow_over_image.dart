import 'package:flutter/material.dart';

class ShadowOverImage extends StatelessWidget {
  const ShadowOverImage({super.key, required this.child, required this.height});
  final Widget child;
  final double height;
  final gradFromTop = const LinearGradient(
      colors: [Colors.black, Colors.transparent],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  final gradFromBottom = const LinearGradient(
      colors: [Colors.black, Colors.transparent],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned.fill(child: child),
          Container(
            height: height,
            decoration: BoxDecoration(
              gradient: gradFromBottom,
            ),
          ),
          Container(
            height: height,
            decoration: BoxDecoration(
              gradient: gradFromTop,
            ),
          )
        ],
      ),
    );
  }
}
