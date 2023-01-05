import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.onPress});
  final TextStyle _style = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.normal);

  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.transparent,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Ersan Tzampaz Chatip",
              style: _style,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              onPressed: (() {
                onPress();
              }),
              child: Text(
                "Contact Me",
                style: _style,
              ),
            ),
          )
        ],
      ),
    );
  }
}
