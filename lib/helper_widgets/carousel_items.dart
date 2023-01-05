import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class CarouselListItemVerticalNoImage extends StatelessWidget {
  CarouselListItemVerticalNoImage(
      {super.key,
      required this.title,
      required this.description,
      required this.linkPage});

  final String title;
  final String description;
  final String linkPage;
  final TextStyle _style = const TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 24,
      fontWeight: FontWeight.normal);
  final Gradient _gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.black.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.black.withOpacity(0.2),
      ]);
  final TextStyle _smallerStyle = const TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 18,
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // ignore: prefer_const_literals_to_create_immutables
            border: Border.all(
                color: Colors.white.withOpacity(0.4),
                strokeAlign: StrokeAlign.outside),
            gradient: _gradient),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: MediaQuery.of(context).size.width > 500
                    ? _style
                    : _smallerStyle,
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: MediaQuery.of(context).size.width > 500
                        ? _style
                        : _smallerStyle,
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    html.window.open(linkPage, "");
                  },
                  child: const Text(
                    "Follow Link",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class CarouselListItemHorizontal extends StatelessWidget {
  CarouselListItemHorizontal(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.linkPage});

  final String title;
  final String description;
  final String imagePath;
  final String linkPage;
  final Gradient _gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.black.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.black.withOpacity(0.2),
      ]);

  final TextStyle _style = const TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 24,
      fontWeight: FontWeight.normal);
  final TextStyle _smallerStyle = const TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 18,
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // ignore: prefer_const_literals_to_create_immutables
            border: Border.all(
                color: Colors.white.withOpacity(0.4),
                strokeAlign: StrokeAlign.outside),
            gradient: _gradient),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        title,
                        style: MediaQuery.of(context).size.width > 500
                            ? _style
                            : _smallerStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          description,
                          style: MediaQuery.of(context).size.width > 500
                              ? _style
                              : _smallerStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          html.window.open(linkPage, "");
                        },
                        child: const Text(
                          "Follow Link",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class CarouselListItemVertical extends StatelessWidget {
  CarouselListItemVertical({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.linkPage,
    required this.shadowColor,
  }) : super(key: key);
  final String title;
  final String description;
  final String imagePath;
  final String linkPage;
  final Color shadowColor;
  final double opacity = 0.2;
  final Gradient _gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.black.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.blueGrey.withOpacity(0.2),
        Colors.black.withOpacity(0.2),
      ]);

  final TextStyle _style = const TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 24,
      fontWeight: FontWeight.normal);
  final TextStyle _smallerStyle = const TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 18,
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // ignore: prefer_const_literals_to_create_immutables
            border: Border.all(
                color: Colors.white.withOpacity(0.4),
                strokeAlign: StrokeAlign.outside),
            gradient: _gradient),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: MediaQuery.of(context).size.width > 500
                    ? _style
                    : _smallerStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              if (MediaQuery.of(context).size.width > 500)
                Expanded(
                  flex: MediaQuery.of(context).size.width > 800 ? 2 : 1,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 3),
                            color: shadowColor == Colors.white
                                ? shadowColor.withOpacity(0.3)
                                : shadowColor,
                            blurRadius: 1)
                      ],
                    ),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              Expanded(
                flex: MediaQuery.of(context).size.width > 800 ? 1 : 2,
                child: Center(
                  child: Text(
                    description,
                    style: MediaQuery.of(context).size.width > 400
                        ? _style
                        : _smallerStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    html.window.open(linkPage, "");
                  },
                  child: const Text(
                    "Follow Link",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
