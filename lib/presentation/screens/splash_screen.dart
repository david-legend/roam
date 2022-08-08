import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/bg_card.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/routes/router.gr.dart';
import 'package:roam/values/values.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    run();
  }

  void run() {
    Future.delayed(Duration(milliseconds: 1500), () {
      AutoRouter.of(context).push(OnBoardingScreenRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    return Scaffold(
      body: Container(
        width: widthOfScreen,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: (heightOfScreen * 0.1)),
                child: SvgPicture.asset(
                  ImagePath.LEAF_2,
                  height: heightOfScreen * 0.025,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: heightOfScreen * 0.25,
              child: Column(
                children: [
                  Container(
                    width: widthOfScreen,
                    height: heightOfScreen * 0.5,
                    child: Center(
                      child: SvgPicture.asset(
                        ImagePath.BG,
                        height: assignHeight(context: context, fraction: 0.5),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: heightOfScreen * 0.25,
              child: Container(
                width: widthOfScreen,
                height: heightOfScreen * 0.5,
                child: _buildIcons(context),
              ),
            ),
            Positioned(
              top: heightOfScreen * 0.8,
              left: widthOfScreen * 0.25,
              child: SvgPicture.asset(
                ImagePath.LEAF_3,
                height: heightOfScreen * 0.04,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: heightOfScreen * 0.85,
              right: widthOfScreen * 0.25,
              child: SvgPicture.asset(
                ImagePath.LEAF_1,
                height: heightOfScreen * 0.025,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcons(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double heightOfScreen = assignHeight(context: context, fraction: 1);
    double widthOfScreen = assignWidth(context: context, fraction: 1);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringConst.APP_NAME,
              style: theme.textTheme.headlineLarge
                  ?.copyWith(color: AppColors.accentColor),
            ),
            SpaceW48(),
            BgCard(
              child: Icon(
                FeatherIcons.mapPin,
                size: Sizes.ICON_SIZE_30,
                color: AppColors.green100,
              ),
            ),
          ],
        ),
        SpaceH40(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BgCard(
              child: Icon(
                FeatherIcons.share2,
                size: Sizes.ICON_SIZE_30,
                color: AppColors.orange50,
              ),
            ),
            BgCard(
              width: widthOfScreen * 0.4,
              height: heightOfScreen * 0.2,
              child: SvgPicture.asset(
                ImagePath.EARTH,
                width: widthOfScreen * 0.4,
                height: heightOfScreen * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: Sizes.MARGIN_60),
              child: BgCard(
                child: Center(
                  child: Image.asset(
                    ImagePath.NAVIGATION,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SpaceH40(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BgCard(
              child: Center(
                child: Image.asset(
                  ImagePath.AIR_PLANE,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
