import 'package:flutter/material.dart';

class AnimatedSkillContainer extends StatelessWidget {
  AnimatedSkillContainer(
      {super.key,
      required this.text,
      required this.pixels,
      required this.pixelsTillAnimation});
  final double width = 250;
  final double height = 80;
  final String text;
  double pixels = 0;
  final double pixelsTillAnimation;
  final Color? startEndColor = Colors.black;
  final Color? middleColor = Colors.red[900];
  double opacity = 0.2;

  final TextStyle _style = const TextStyle(
      color: Colors.white,
      fontSize: 24,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          top: pixels >= pixelsTillAnimation ? 0 : 500,
          duration: const Duration(milliseconds: 500),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width > 650
                    ? MediaQuery.of(context).size.width / 3
                    : MediaQuery.of(context).size.width - 50,
                height: 70,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          startEndColor!.withOpacity(opacity),
                          middleColor!.withOpacity(opacity),
                          middleColor!.withOpacity(opacity),
                          middleColor!.withOpacity(opacity),
                          startEndColor!.withOpacity(opacity)
                        ]),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.5), width: 1)),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: _style,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
