import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:roam/presentation/widgets/custom_button.dart';
import 'package:roam/presentation/widgets/custom_button_2.dart';
import 'package:roam/presentation/widgets/custom_text_form_field.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/values/values.dart';

//TODO:: add radio button
class AddCollaboratorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: Sizes.PADDING_32,
          horizontal: Sizes.PADDING_24,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: Sizes.WIDTH_50,
                  height: Sizes.HEIGHT_50,
                  child: CustomButton2(
                    onPressed: () {},
                    borderRadius: Sizes.RADIUS_12,
                    icon: Icons.arrow_back_ios,
                    iconColor: AppColors.white,
                    color: AppColors.accentColor,
                  ),
                ),
              ],
            ),
            SpaceH16(),
            Text(
              StringConst.ADD_COLLABORATORS,
              style: theme.textTheme.headline6.copyWith(
                color: AppColors.black50,
              ),
            ),
            SpaceH16(),
            CustomTextFormField(
              textFormFieldStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.secondaryColor,
              ),
              hintText: StringConst.SEARCH_HINT_TEXT_2,
              prefixIconColor: AppColors.primaryColor,
              hintTextStyle: theme.textTheme.bodyText2.copyWith(
                color: AppColors.grey,
              ),
              filled: true,
              fillColor: AppColors.white,
              hasSuffixIcon: true,
              suffixIcon: Icon(
                FeatherIcons.search,
                color: AppColors.primaryColor,
              ),
              borderStyle: BorderStyle.solid,
            ),
            CustomButton(
              onPressed: () {},
              title: StringConst.FINISH,
              textStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.white,
              ),
              borderRadius: Sizes.RADIUS_8,
            ),
          ],
        ),
      ),
    );
  }
}
