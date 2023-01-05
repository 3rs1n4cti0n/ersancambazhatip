import 'package:ersancambazhatip/helper_widgets/shadow_over_image.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  AboutMe(
      {super.key,
      required this.width,
      required this.height,
      required this.pixels});

  final double width;
  final double height;
  double pixels = 0;

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final TextStyle _style = const TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 30,
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ShadowOverImage(
            height: widget.height,
            child: SizedBox(
              height: widget.height,
              child: Image.asset(
                "Assets/aboutme.jpg",
                color: Colors.red,
                colorBlendMode: BlendMode.multiply,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: widget.height,
          child: Stack(children: [
            AnimatedPositioned(
                right: widget.pixels >= 50 ? 0 : widget.width,
                duration: const Duration(milliseconds: 300),
                child: SizedBox(
                  height: widget.height,
                  width: widget.width,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: Text(
                            "ABOUT ME",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Text(
                          "I was born in Greece. Graduated from Computer Science and I enjoy designing products and their architecture.",
                          textAlign: TextAlign.center,
                          style: _style,
                        ),
                      ],
                    ),
                  ),
                ))
          ]),
        )
      ],
    );
  }
}
