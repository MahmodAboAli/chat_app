import 'package:chat_app/core/constant.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'images.dart';

enum Logo { google, facebook, apple }

/// this button is the default button of the app.
class DefaultButton extends StatelessWidget {
  /// Create a [DefaultButton].
  ///
  /// you can choise between enabled and disabled mode of [DefaultButton],
  /// one could write:
  ///
  /// ```dart
  /// DefaultButton(
  ///   enabled: true,
  ///   ...
  ///
  /// ),
  /// ```
  ////////////////////////////////////////////////////////////////////////////
  ///
  /// you can choise between circular and rectangle shap of [DefaultButton],
  /// one could write:
  ///
  /// ```dart
  /// DefaultButton(
  ///   rectangleButton: true,
  ///   ...
  ///
  /// ),
  /// ```
  const DefaultButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.disabledBackgroundColor,
    required this.disabledForegroundColor,
    this.enabled = true,
    this.rectangleButton = false,
  });
  final String title;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color disabledBackgroundColor;
  final Color disabledForegroundColor;
  final bool enabled;
  final bool rectangleButton;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width - 40,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          shape: rectangleButton
              ? const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(Constant.defaultRadius)))
              : null,
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 30),
          elevation: 7,
          shadowColor: backgroundColor,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          disabledForegroundColor: disabledForegroundColor,
        ),
        child: Text(title),
      ),
    );
  }
}

class DefaultButtonWithIcon extends StatelessWidget {
  /// Create a [DefaultButtonWithIcon].
  ///
  /// you must to set icons from [FontAwesomeIcons] because it is more beautiful,
  /// one could write:
  /// ```dart
  /// DefaultButtonWithIcon(
  ///   icon: FontAwesomeIcons.cartShopping,
  ///   ...
  ///
  /// ),
  /// ```
  ////////////////////////////////////////////////////////////////////////////
  ///
  /// you can choise between enabled and disabled mode of [DefaultButtonWithIcon],
  /// one could write:
  ///
  /// ```dart
  /// DefaultButtonWithIcon(
  ///   enabled: true,
  ///   ...
  ///
  /// ),
  /// ```
  ////////////////////////////////////////////////////////////////////////////
  ///
  /// you can choise between circular and rectangle shap of [DefaultButtonWithIcon],
  /// one could write:
  ///
  /// ```dart
  /// DefaultButtonWithIcon(
  ///   rectangleButton: true,
  ///   ...
  ///
  /// ),
  /// ```
  const DefaultButtonWithIcon({
    super.key,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.disabledBackgroundColor,
    required this.disabledForegroundColor,
    this.enabled = true,
    this.rectangleButton = false,
    required this.icon,
  });
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color disabledBackgroundColor;
  final Color disabledForegroundColor;
  final bool enabled;
  final bool rectangleButton;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width - 40,
      child: ElevatedButton.icon(
        icon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(icon, size: 18),
        ),
        onPressed: enabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          shape: rectangleButton
              ? const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(Constant.defaultRadius)))
              : null,
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 30),
          elevation: 7,
          shadowColor: backgroundColor,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          disabledForegroundColor: disabledForegroundColor,
        ),
        label: Text(title),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  /// Create a [SocialButton].
  ///
  /// To choise the logo you can use [Logo] enum, one could write:
  ///
  /// ```dart
  /// SocialButton(
  ///   logo: Logo.apple,
  ///   ...
  ///
  /// ),
  /// ```
  const SocialButton({
    super.key,
    required this.title,
    required this.logo,
    required this.onPressed,
    this.isDark = false,
  });
  final void Function() onPressed;
  /// this property for all of app
  final bool isDark;
  final String title;
  final Logo logo;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width - 40,
      child: ElevatedButton.icon(
        icon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image(
              width: 24,
              image: AssetImage(
                logo == Logo.google
                    ? AppImages.googleImage
                    : logo == Logo.facebook
                        ? AppImages.facebookImage
                        : logo == Logo.apple && isDark
                            ? AppImages.appleDarkImage
                            : AppImages.appleLightImage,
              )),
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(Constant.defaultRadius)),
            side: isDark
                ? const BorderSide(width: 1, color: greyscale300Color)
                : BorderSide.none,
          ),
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 30),
          elevation: 0,
          shadowColor: isDark ? whiteColor : dark1Color,
          backgroundColor: isDark ? whiteColor : dark1Color,
          foregroundColor: isDark ? dark2Color : whiteColor,
        ),
        label: Text(title),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
    required this.onPressed,
    this.isRadius = true,
    required this.backgroundColor,
    required this.foregroundColor, required this.icon,
  });
  final void Function() onPressed;
  final bool isRadius;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: 6,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(isRadius ? 30 : Constant.defaultRadius))),
      child: Icon(icon),
    );
  }
}

