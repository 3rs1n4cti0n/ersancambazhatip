import 'package:ersancambazhatip/helper_widgets/carousel_items.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 900,
          child: Stack(children: [
            Positioned.fill(
              child: Image.asset(
                "work.jpg",
                fit: BoxFit.cover,
                color: Colors.blue,
                colorBlendMode: BlendMode.multiply,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.25),
                      Colors.black,
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.25),
                      Colors.black,
                    ],
                  )),
            ),
          ]),
        ),
        SizedBox(
          height: 900,
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "PORTFOLIO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CarouselSlider(
                          options: CarouselOptions(
                              pageSnapping: true,
                              enableInfiniteScroll: false,
                              clipBehavior: Clip.none,
                              height: MediaQuery.of(context).size.width < 400
                                  ? 500
                                  : 600,
                              viewportFraction: 0.7,
                              enlargeCenterPage: true),
                          items: [
                            if (MediaQuery.of(context).size.width > 800)
                              CarouselListItemHorizontal(
                                title: "Music Player App UI",
                                description:
                                    "Using Flutter created a music player app UI.",
                                imagePath: "music.png",
                                linkPage:
                                    "https://github.com/3rs1n4cti0n/MusicPlayerApp-JDK-17-",
                              ),
                            if (MediaQuery.of(context).size.width < 800)
                              CarouselListItemVertical(
                                title: "Music Player App UI",
                                description:
                                    "Using Flutter created a music player app UI.",
                                imagePath: "music.png",
                                linkPage:
                                    "https://github.com/3rs1n4cti0n/MusicPlayerApp-JDK-17-",
                                shadowColor: Colors.black,
                              ),
                            CarouselListItemVertical(
                              description:
                                  "Using darts' Flutter framework created the current webpage.",
                              imagePath: "website.jpeg",
                              title: "Current Website",
                              linkPage: "ersancambazhatip.web.app",
                              shadowColor: Colors.white,
                            ),
                            CarouselListItemVertical(
                              description:
                                  "Used Unity Game Engine to create a Pokemon like game. All of the in game assets have been created using PyxelEdit.",
                              imagePath: "teras.png",
                              title: "Researchers Of Teras",
                              linkPage:
                                  "https://drive.google.com/file/d/1chqGQ9yE0gSkphp7W5HSDeZgRoBvChX_/view?usp=sharing",
                              shadowColor: Colors.black,
                            ),
                            CarouselListItemVertical(
                              imagePath: "spam_detection.png",
                              title: "Spam Mail Detection",
                              description:
                                  "Used Python with Numpy, Sklearn, Pandas, Seaborn and matplotlib to create a machine learning algorithm to detect spam e-mails with 98% accuracy and then show the resulting matrix.",
                              linkPage:
                                  "https://github.com/3rs1n4cti0n/text-mining-project",
                              shadowColor: Colors.black,
                            ),
                            CarouselListItemVertical(
                              imagePath: "heart_risk.png",
                              title: "Heart Risk Detection",
                              description:
                                  "Used Python with Sklearn and Pandas to create a machine learning algorithm to detect risk of heart disease with 99% accuracy and then show the resulting matrix.",
                              linkPage:
                                  "https://github.com/3rs1n4cti0n/MachineLearningTemplate/tree/featureSelection",
                              shadowColor: Colors.black,
                            ),
                            if (MediaQuery.of(context).size.width > 800)
                              CarouselListItemHorizontal(
                                  imagePath: "testpro.png",
                                  title: "TestPro Fitness App",
                                  description:
                                      "TestPro is a fitness application created with Flutter that is used to store some data and display it. Used Firebase as backend to keep name, surname, age, weight, height and e-mail.",
                                  linkPage:
                                      "https://github.com/3rs1n4cti0n/TestPro"),
                            if (MediaQuery.of(context).size.width < 800)
                              CarouselListItemVertical(
                                imagePath: "testpro.png",
                                title: "TestPro Fitness App",
                                description:
                                    "TestPro is a fitness application created with Flutter that is used to store some data and display it. Used Firebase as backend to keep name, surname, age, weight, height and e-mail.",
                                linkPage:
                                    "https://github.com/3rs1n4cti0n/TestPro",
                                shadowColor: Colors.black,
                              ),
                            CarouselListItemVerticalNoImage(
                                title: "Visual Novel Creator",
                                description:
                                    "Visual novel creator will be a Game Engine to create visual novels without writing any code. Currently has path navigation only.",
                                linkPage:
                                    "https://github.com/3rs1n4cti0n/story_creator"),
                            CarouselListItemVerticalNoImage(
                                title: "More On Github",
                                description:
                                    "Click the \"Follow Link\" to check the github repository page, where you can follow to get updates on my projects.",
                                linkPage:
                                    "https://github.com/3rs1n4cti0n?tab=repositories")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
