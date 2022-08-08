import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/values/values.dart';

import 'custom_button_2.dart';
import 'custom_text_form_field.dart';

const double kSidePadding = Sizes.PADDING_24;
const double kButtonWidth = Sizes.WIDTH_56;

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfScreen = assignWidth(context: context, fraction: 1);
    return Row(
      children: [
        Container(
          width: widthOfScreen - ((kSidePadding * 2) + kButtonWidth + 8),
          child: CustomTextFormField(
            textFormFieldStyle: theme.textTheme.titleLarge?.copyWith(
              color: AppColors.secondaryColor,
            ),
            hintText: StringConst.SEARCH_HINT_TEXT,
            prefixIconColor: AppColors.primaryColor,
            hintTextStyle: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.grey,
            ),
            filled: true,
            fillColor: AppColors.white,
            borderStyle: BorderStyle.solid,
          ),
        ),
        SpaceW8(),
        Container(
          width: kButtonWidth,
          height: Sizes.HEIGHT_56,
          child: CustomButton2(
            onPressed: () {},
            borderRadius: Sizes.RADIUS_8,
            icon: FeatherIcons.sliders,
          ),
        )
      ],
    );
  }
}
