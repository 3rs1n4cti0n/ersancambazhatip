import 'package:ersancambazhatip/helper_widgets/animated_skills.dart';
import 'package:ersancambazhatip/helper_widgets/shadow_over_image.dart';
import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  Skills(
      {super.key,
      required this.width,
      required this.height,
      required this.pixels});

  final double width;
  final double height;
  double pixels = 0;

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ShadowOverImage(
          height: widget.height,
          child: SizedBox(
            height: widget.height,
            child: Image.asset(
              "Assets/skills.jpg",
              color: Colors.green[900],
              colorBlendMode: BlendMode.multiply,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: widget.height,
          width: pageWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
            ),
            child: pageWidth > 650
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 50),
                        child: Text(
                          "SKILLS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 80,
                            width: widget.width / 3,
                            child: Center(
                              child: AnimatedSkillContainer(
                                text: "Flutter",
                                pixels: widget.pixels,
                                pixelsTillAnimation: 300,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: widget.width / 3,
                            child: Center(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AnimatedSkillContainer(
                                      text: "UI/UX Design",
                                      pixels: widget.pixels,
                                      pixelsTillAnimation: 300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 80,
                            width: widget.width / 3,
                            child: Center(
                              child: AnimatedSkillContainer(
                                text: "Machine Learning",
                                pixels: widget.pixels,
                                pixelsTillAnimation: 400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: widget.width / 3,
                            child: Center(
                              child: AnimatedSkillContainer(
                                text: "Communication",
                                pixels: widget.pixels,
                                pixelsTillAnimation: 400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 80,
                            width: widget.width / 3,
                            child: Center(
                              child: AnimatedSkillContainer(
                                text: "Logo Design",
                                pixels: widget.pixels,
                                pixelsTillAnimation: 500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: widget.width / 3,
                            child: Center(
                              child: AnimatedSkillContainer(
                                text: "Poster Design",
                                pixels: widget.pixels,
                                pixelsTillAnimation: 500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 80,
                            width: widget.width / 3,
                            child: Center(
                              child: AnimatedSkillContainer(
                                text: "Python",
                                pixels: widget.pixels,
                                pixelsTillAnimation: 600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: widget.width / 3,
                            child: Center(
                              child: AnimatedSkillContainer(
                                text: "C#",
                                pixels: widget.pixels,
                                pixelsTillAnimation: 600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 50),
                        child: Text(
                          "SKILLS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width:
                            pageWidth > 650 ? widget.width / 3 : pageWidth - 50,
                        child: Center(
                          child: AnimatedSkillContainer(
                            text: "Flutter",
                            pixels: widget.pixels,
                            pixelsTillAnimation: 300,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width:
                            pageWidth > 650 ? widget.width / 3 : pageWidth - 50,
                        child: Center(
                          child: Row(
                            children: [
                              Expanded(
                                child: AnimatedSkillContainer(
                                  text: "UI/UX Design",
                                  pixels: widget.pixels,
                                  pixelsTillAnimation: 350,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width:
                            pageWidth > 650 ? widget.width / 3 : pageWidth - 50,
                        child: Center(
                          child: AnimatedSkillContainer(
                            text: "Machine Learning",
                            pixels: widget.pixels,
                            pixelsTillAnimation: 400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width:
                            pageWidth > 650 ? widget.width / 3 : pageWidth - 50,
                        child: Center(
                          child: AnimatedSkillContainer(
                            text: "Communication",
                            pixels: widget.pixels,
                            pixelsTillAnimation: 450,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width:
                            pageWidth > 650 ? widget.width / 3 : pageWidth - 50,
                        child: Center(
                          child: AnimatedSkillContainer(
                            text: "Logo Design",
                            pixels: widget.pixels,
                            pixelsTillAnimation: 500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width:
                            pageWidth > 650 ? widget.width / 3 : pageWidth - 50,
                        child: Center(
                          child: AnimatedSkillContainer(
                            text: "Poster Design",
                            pixels: widget.pixels,
                            pixelsTillAnimation: 550,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width:
                            pageWidth > 650 ? widget.width / 3 : pageWidth - 50,
                        child: Center(
                          child: AnimatedSkillContainer(
                            text: "Python",
                            pixels: widget.pixels,
                            pixelsTillAnimation: 600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width:
                            pageWidth > 650 ? widget.width / 3 : pageWidth - 50,
                        child: Center(
                          child: AnimatedSkillContainer(
                            text: "C#",
                            pixels: widget.pixels,
                            pixelsTillAnimation: 650,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        )
      ],
    );
  }
}
