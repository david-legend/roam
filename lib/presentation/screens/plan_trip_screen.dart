import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/custom_button.dart';
import 'package:roam/presentation/widgets/custom_button_2.dart';
import 'package:roam/presentation/widgets/custom_text_form_field.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/routes/router.gr.dart';
import 'package:roam/values/values.dart';

const double kBorderRadius = Sizes.RADIUS_8;

class PlanTripScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double width = assignWidth(context: context, fraction: 1);
    double height = assignHeight(context: context, fraction: 0.4);
    TextStyle titleStyle = theme.textTheme.subtitle1.copyWith(
      color: AppColors.black50,
    );
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: const Radius.circular(Sizes.RADIUS_60),
                  ),
                  child: Image.asset(
                    ImagePath.HOLIDAY,
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: Sizes.PADDING_32,
                    horizontal: Sizes.PADDING_24,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: Sizes.WIDTH_50,
                        height: Sizes.HEIGHT_50,
                        child: CustomButton2(
                          onPressed: () {
                            ExtendedNavigator.root.pop();
                          },
                          borderRadius: Sizes.RADIUS_12,
                          icon: Icons.arrow_back_ios,
                          iconColor: AppColors.white,
                          color: AppColors.accentColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SpaceH16(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(StringConst.TRIP_NAME, style: titleStyle),
                  SpaceH16(),
                  CustomTextFormField(
                    textFormFieldStyle: theme.textTheme.subtitle1.copyWith(
                      color: AppColors.secondaryColor,
                    ),
                    hintText: StringConst.TRIP_HINT_TEXT,
                    prefixIconColor: AppColors.primaryColor,
                    hintTextStyle: theme.textTheme.bodyText2.copyWith(
                      color: AppColors.grey,
                    ),
                    filled: true,
                    fillColor: AppColors.white,
                    borderStyle: BorderStyle.solid,
                  ),
                  SpaceH16(),
                  Text(StringConst.DATE, style: titleStyle),
                  SpaceH16(),
                  CustomTextFormField(
                    textFormFieldStyle: theme.textTheme.subtitle1.copyWith(
                      color: AppColors.secondaryColor,
                    ),
                    hintText: StringConst.DATE_HINT_TEXT,
                    prefixIconColor: AppColors.primaryColor,
                    hintTextStyle: theme.textTheme.bodyText2.copyWith(
                      color: AppColors.grey,
                    ),
                    filled: true,
                    hasSuffixIcon: true,
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: AppColors.accentColor,
                    ),
                    fillColor: AppColors.white,
                    borderStyle: BorderStyle.solid,
                  ),
                  SpaceH30(),
                  Text(StringConst.TRAVEL_WITH, style: titleStyle),
                  SpaceH16(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: assignWidth(context: context, fraction: 0.3),
                        child: CustomButton(
                          onPressed: () {
                            ExtendedNavigator.root
                                .push(Routes.addCollaboratorsScreen);
                          },
                          height: Sizes.HEIGHT_44,
                          title: StringConst.PARTY,
                          textStyle: theme.textTheme.subtitle1.copyWith(
                            color: AppColors.white,
                          ),
                          borderRadius: Sizes.RADIUS_8,
                        ),
                      ),
                      Container(
                        width: assignWidth(context: context, fraction: 0.3),
                        child: CustomButton(
                          onPressed: () {},
                          height: Sizes.HEIGHT_44,
                          title: StringConst.SOLO,
                          color: AppColors.white,
                          borderSide: BorderSide(color: AppColors.grey),
                          textStyle: theme.textTheme.subtitle1.copyWith(
                            color: AppColors.grey,
                          ),
                          borderRadius: Sizes.RADIUS_8,
                        ),
                      ),
                    ],
                  ),
                  SpaceH24(),
                  CustomButton(
                    onPressed: () {},
                    title: StringConst.START_MY_TRIP,
                    textStyle: theme.textTheme.subtitle1.copyWith(
                      color: AppColors.white,
                    ),
                    borderRadius: Sizes.RADIUS_8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
