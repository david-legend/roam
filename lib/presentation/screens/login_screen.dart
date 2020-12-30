import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/custom_button.dart';
import 'package:roam/presentation/widgets/custom_text_form_field.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/routes/router.gr.dart';
import 'package:roam/values/values.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                SvgPicture.asset(ImagePath.LIGHT_ELLIPSE, fit: BoxFit.cover),
                Container(
                  height: assignHeight(context: context, fraction: 1.0),
                  child: _socialLogin(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialLogin(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double width = assignWidth(context: context, fraction: 1.0);
    TextStyle hintTextStyle = theme.textTheme.bodyText2;
    TextStyle titleTextStyle = theme.textTheme.subtitle1;
    TextStyle formTextStyle = theme.textTheme.subtitle2.copyWith(
      color: AppColors.black50,
    );
    return Column(
      children: [
        Spacer(),
        Text(
          StringConst.LOG_IN,
          style: theme.textTheme.headline5.copyWith(
            color: AppColors.secondaryColor,
          ),
        ),
        SpaceH20(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: width * 0.35,
              child: CustomButton(
                onPressed: () {},
                borderRadius: Sizes.RADIUS_8,
                color: AppColors.white,
                hasIcon: true,
                title: StringConst.GOOGLE,
                icon: Image.asset(
                  ImagePath.GOOGLE,
                  width: Sizes.WIDTH_24,
                  height: Sizes.HEIGHT_24,
                ),
              ),
            ),
            Container(
              width: width * 0.35,
              child: CustomButton(
                onPressed: () {},
                borderRadius: Sizes.RADIUS_8,
                color: AppColors.white,
                hasIcon: true,
                title: StringConst.FACEBOOK,
                icon: Icon(
                  FontAwesomeIcons.facebookSquare,
                  color: AppColors.facebookBlue,
                ),
              ),
            ),
          ],
        ),
        SpaceH20(),
        Text(
          StringConst.OR,
          style: theme.textTheme.bodyText1,
        ),
        SpaceH20(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
          child: CustomTextFormField(
            hasTitle: true,
            fieldTitle: StringConst.EMAIL,
            fieldTitleTextStyle: titleTextStyle,
            textFormFieldStyle: formTextStyle,
            hintText: StringConst.EMAIL_HINT_TEXT,
            prefixIconColor: AppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            filled: true,
            fillColor: AppColors.white,
            borderStyle: BorderStyle.solid,
          ),
        ),
        SpaceH16(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
          child: CustomTextFormField(
            hasTitle: true,
            fieldTitle: StringConst.PASSWORD,
            fieldTitleTextStyle: titleTextStyle,
            textFormFieldStyle: formTextStyle,
            hintText: StringConst.PASSWORD_HINT_TEXT,
            prefixIconColor: AppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            filled: true,
            fillColor: AppColors.white,
            obscured: true,
            borderStyle: BorderStyle.solid,
          ),
        ),
        SpaceH8(),
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: Sizes.PADDING_24),
              padding: const EdgeInsets.only(bottom: Sizes.PADDING_4),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.secondaryColor, // Text colour here
                    width: Sizes.WIDTH_1, // Underline width
                  ),
                ),
              ),
              child: Text(
                StringConst.FORGOT_PASSWORD,
                style: theme.textTheme.bodyText2.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
          ),
        ),
        SpaceH30(),
        Container(
          height: Sizes.HEIGHT_56,
          margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_24),
          child: CustomButton(
            onPressed: () {
              ExtendedNavigator.root.push(Routes.selectInterestScreen);
            },
            borderRadius: Sizes.RADIUS_8,
            title: StringConst.LOG_IN,
            textStyle: theme.textTheme.subtitle1.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            ExtendedNavigator.root.push(Routes.signUpScreen);
          },
          child: Container(
            padding: EdgeInsets.only(
              bottom: Sizes.PADDING_2, // space between underline and text
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.secondaryColor, // Text colour here
                  width: Sizes.WIDTH_1, // Underline width
                ),
              ),
            ),
            child: RichText(
              text: TextSpan(
                text: StringConst.DONT_HAVE_AN_ACCOUNT,
                style: theme.textTheme.bodyText2.copyWith(
                  color: AppColors.secondaryColor,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: StringConst.CREATE_ACCOUNT,
                    style: theme.textTheme.bodyText2.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SpaceH16(),
      ],
    );
  }
}
