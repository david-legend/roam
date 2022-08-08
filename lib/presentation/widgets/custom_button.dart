import 'package:flutter/material.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/values/values.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.title,
    this.onPressed,
    this.height = Sizes.HEIGHT_50,
    this.elevation = Sizes.ELEVATION_1,
    this.borderRadius = Sizes.RADIUS_24,
    this.color = AppColors.accentColor,
    this.borderSide = Borders.defaultPrimaryBorder,
    this.textStyle,
    this.icon,
  });

  final VoidCallback? onPressed;
  final double height;
  final double elevation;
  final double borderRadius;
  final String? title;
  final Color color;
  final BorderSide borderSide;
  final TextStyle? textStyle;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderSide,
      ),
      height: height,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon != null ? icon! : Container(),
          icon != null ? SpaceW8() : Container(),
          title != null
              ? Text(
                  title!,
                  style: textStyle,
                )
              : Container(
                  width: 0,
                  height: 0,
                ),
        ],
      ),
    );
  }
}
