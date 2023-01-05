import 'package:ersancambazhatip/home_page_widgets/about_me.dart';
import 'package:ersancambazhatip/home_page_widgets/app_bar.dart';
import 'package:ersancambazhatip/home_page_widgets/contact_me.dart';
import 'package:ersancambazhatip/home_page_widgets/portfolio.dart';
import 'package:ersancambazhatip/home_page_widgets/skills.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double? width;
  double? height;
  final ScrollController _controller = ScrollController();
  double pixelsFromTop = 0;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        pixelsFromTop = _controller.position.pixels;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      controller: _controller,
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            AppBarWidget(
              onPress: () {
                _controller.animateTo(height! * 10,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeIn);
              },
            ),
            Container(
              color: Colors.black,
              height: 100,
            ),
            AboutMe(
              height: 800,
              width: width!.toDouble(),
              pixels: pixelsFromTop,
            ),
            Skills(width: width!, height: 800, pixels: pixelsFromTop),
            const Portfolio(),
            ContactMe()
          ],
        ),
      ),
    );
  }
}
