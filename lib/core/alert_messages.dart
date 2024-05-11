import 'package:chat_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';

enum AlertColor { infoColor, warningColor, errorColor, successColor }

class AlertMessage extends StatelessWidget {
  const AlertMessage({
    super.key,
    this.message = 'Alert message',
    this.icon = FontAwesomeIcons.circleInfo,
    AlertColor color = AlertColor.infoColor,
  })  : foregroundColor = color == AlertColor.infoColor
            ? infoColor
            : color == AlertColor.successColor
                ? successColor
                : color == AlertColor.warningColor
                    ? warningColor
                    : errorColor,
        backgroundColor = color == AlertColor.infoColor
            ? blueBackground
            : color == AlertColor.successColor
                ? greenBackground
                : color == AlertColor.warningColor
                    ? yellowBackground
                    : redBackground;
  final String message;
  final IconData icon;
  final Color foregroundColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:
              const BorderRadius.all(Radius.circular(Constant.defaultRadius))),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 45,
      width: width - 70,
      duration: const Duration(milliseconds: 500),
      child: Row(
        children: [
          Icon(icon, color: foregroundColor, size: 18),
          SizedBox(width: width * 0.03),
          Expanded(
              child: Text(message,
                  style: TextStyle(
                      color: foregroundColor,
                      fontSize: 13,
                      overflow: TextOverflow.ellipsis))),
        ],
      ),
    );
  }
}
