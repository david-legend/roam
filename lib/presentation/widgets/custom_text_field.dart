import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:roam/values/values.dart';

class CustomTextField extends StatelessWidget {
  final TextStyle textFormFieldStyle;
  final TextStyle hintTextStyle;
  final TextStyle fieldTitleTextStyle;
  final IconData iconData;
  final BorderStyle borderStyle;
  final double borderRadius;
  final double borderWidth;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final double prefixIconMarginHorizontal;
  final String prefixIconImagePath;
  final String hintText;
  final String fieldTitle;
  final Color prefixIconColor;
  final Color fillColor;
  final bool filled;
  final bool obscured;
  final bool hasTitle;
  final bool hasIcon;
  final int maxLines;

  CustomTextField({
    this.prefixIconImagePath,
    this.textFormFieldStyle,
    this.fieldTitleTextStyle,
    this.hintTextStyle,
    this.borderStyle = BorderStyle.none,
    this.borderRadius = Sizes.SIZE_6,
    this.borderWidth = Sizes.SIZE_0,
    this.contentPaddingHorizontal = Sizes.SIZE_16,
    this.contentPaddingVertical = Sizes.SIZE_16,
    this.prefixIconMarginHorizontal = Sizes.SIZE_16,
    this.hintText,
    this.maxLines = 1,
    this.prefixIconColor = AppColors.primaryColor,
    this.fillColor = AppColors.white,
    this.filled = true,
    this.obscured = false,
    this.iconData = FeatherIcons.lock,
    this.hasTitle = false,
    this.hasIcon = false,
    this.fieldTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          hasTitle ? formFieldTitle(fieldTitle: fieldTitle) : Container(),
          TextFormField(
            style: textFormFieldStyle,
            maxLines: maxLines,
            decoration: InputDecoration(
              prefixIcon: hasIcon
                  ? Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: prefixIconMarginHorizontal),
                      child: Icon(
                        iconData,
                        color: prefixIconColor,
                      ),
                    )
                  : Container(),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  width: borderWidth,
                  style: borderStyle,
                ),
              ),
              hintText: hintText,
              hintStyle: hintTextStyle,
              contentPadding: EdgeInsets.symmetric(
                horizontal: contentPaddingHorizontal,
                vertical: contentPaddingVertical,
              ),
              filled: filled,
              fillColor: fillColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget formFieldTitle({@required String fieldTitle}) {
    return Container(
      margin: EdgeInsets.only(bottom: Sizes.MARGIN_8),
      child: Text(
        fieldTitle,
        style: fieldTitleTextStyle,
      ),
    );
  }
}
