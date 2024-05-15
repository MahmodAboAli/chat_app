import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
  });
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  Color? _backgroundColor;
  Color? _iconColor;
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          _backgroundColor = infoColor.withOpacity(.08);
          _iconColor = focusedBorderTextFieldColor;
        });
      } else {
        setState(() {
          _backgroundColor = null;
          _iconColor = null;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //! edit color of cursor and selection text
    return TextFormField(
      cursorColor: focusedBorderTextFieldColor,
      controller: widget.controller,
      onChanged: widget.onChanged,
      focusNode: _focusNode,
      decoration: InputDecoration(
        fillColor: _backgroundColor,
        suffixIconColor: _iconColor,
        prefixIconColor: _iconColor,
        hintText: widget.hintText,
      ),
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
    );
  }
}
