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
    this.suffixIcon,
    this.prefixIcon,
  });
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
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
      //! on developing 
      // contextMenuBuilder: (context, EditableTextState editableTextState) {
      //   // editableTextState.showToolbar();
      //   // return AdaptiveTextSelectionToolbar.buttonItems(
      //   //     buttonItems: editableTextState.contextMenuButtonItems,
      //   //     anchors: editableTextState.contextMenuAnchors);
      //   return AdaptiveTextSelectionToolbar(
      //     anchors: editableTextState.contextMenuAnchors,
      //     children: editableTextState.contextMenuButtonItems
      //         .map((e) => TextButton(onPressed: () {}, child: Text(e.label??'null')))
      //         .toList(),
      //   );
      //   // return AdaptiveTextSelectionToolbar(
      //   //   anchors: editableTextState.contextMenuAnchors,
      //   //   children: [
      //   //     TextButton(onPressed: (){}, child: Text('yuikuikuik')),
      //   //     IconButton(
      //   //         onPressed: () {
      //   //           print(editableTextState.contextMenuButtonItems[3].label);
      //   //         },
      //   //         icon: const Icon(Icons.copy))
      //   //   ],
      //   // );
      // },
      controller: widget.controller,
      onChanged: widget.onChanged,
      focusNode: _focusNode,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
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
