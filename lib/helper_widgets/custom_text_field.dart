import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      required this.width,
      this.linecount,
      this.error,
      required this.hinttext,
      required this.onChanged})
      : super(key: key);

  final double width;
  int? linecount;
  final String hinttext;
  final void Function(String) onChanged;
  String? error = "";

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        constraints: BoxConstraints(
            maxWidth: (widget.width - 200).clamp(600, 1200), minWidth: 600),
        child: TextFormField(
          onChanged: (value) {
            widget.onChanged(value);
          },
          maxLines: widget.linecount ?? 1,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            errorText: widget.error,
            errorStyle: const TextStyle(color: Colors.white),
            hintText: widget.hinttext,
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
              strokeAlign: StrokeAlign.outside,
              width: 1,
            )),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
              strokeAlign: StrokeAlign.outside,
              width: 1,
            )),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
              strokeAlign: StrokeAlign.outside,
              width: 1,
            )),
          ),
        ),
      ),
    );
  }
}
