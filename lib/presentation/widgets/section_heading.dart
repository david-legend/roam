import 'package:flutter/material.dart';
import 'package:roam/presentation/widgets/empty.dart';
import 'package:roam/values/values.dart';

class SectionHeading extends StatelessWidget {
  SectionHeading({
    @required this.title1,
    this.title2,
    this.title1TextStyle,
    this.title2TextStyle,
    this.hasTitle2 = true,
  });

  final String title1;
  final String title2;
  final TextStyle title1TextStyle;
  final TextStyle title2TextStyle;
  final bool hasTitle2;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          style: title1TextStyle ??
              theme.textTheme.headline6.copyWith(
                color: AppColors.black50,
              ),
        ),
        hasTitle2
            ? Text(
                title2,
                style: title2TextStyle ??
                    theme.textTheme.bodyText2.copyWith(
                      color: AppColors.grey200,
                    ),
              )
            : Empty(),
      ],
    );
  }
}
