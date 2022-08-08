import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/attraction_card.dart';
import 'package:roam/presentation/widgets/custom_button.dart';
import 'package:roam/presentation/widgets/custom_button_2.dart';
import 'package:roam/presentation/widgets/explore_card.dart';
import 'package:roam/presentation/widgets/section_heading.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/presentation/widgets/stacked_images.dart';
import 'package:roam/values/values.dart';

const double kPaddingHorizontal = Sizes.PADDING_24;

class PlaceScreen extends StatelessWidget {
  PlaceScreen({
    required this.place,
    required this.location,
    required this.imagePath,
    required this.rating,
  });

  final String place;
  final String location;
  final String imagePath;
  final double rating;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildTopSection(context),
          SpaceH8(),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConst.LOREM_IPSUM_2,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: AppColors.primaryText2,
                    ),
                  ),
                  SpaceH8(),
                  StackedImages(
                    images: Data.profileStackedImage,
                    extraImagesLength: 150,
                    color: AppColors.lightGreen50,
                    widthOfImageItem: Sizes.WIDTH_36,
                    heightOfImageItem: Sizes.HEIGHT_36,
                    textSize: Sizes.TEXT_SIZE_10,
                    offset: Sizes.WIDTH_36 / 2,
                    textColor: AppColors.secondaryColor,
                  ),
                ],
              ),
              SpaceH16(),
              Column(
                children: [
                  SectionHeading(
                    title1: "${StringConst.MORE_OF} $place",
                    hasTitle2: false,
                  ),
                  SpaceH16(),
                  Container(
                    height: assignHeight(context: context, fraction: 0.125),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data.moreImages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(Sizes.RADIUS_12),
                          ),
                          child: Image.asset(
                            Data.moreImages[index],
                            width:
                                assignWidth(context: context, fraction: 0.25),
                            height:
                                assignHeight(context: context, fraction: 0.20),
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SpaceW12();
                      },
                    ),
                  ),
                ],
              ),
              SpaceH16(),
              SectionHeading(
                title1: StringConst.PLACES_TO_EXPLORE,
                hasTitle2: false,
              ),
              SpaceH12(),
              ..._buildExploreCards(Data.exploreCardItems),
              SpaceH16(),
              SectionHeading(
                title1: StringConst.EXPERIENCES,
                hasTitle2: false,
              ),
              SpaceH12(),
              _buildAttractionCards(context),
              SpaceH24(),
              Center(
                child: Text(
                  StringConst.SEE_MORE,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SpaceH16(),
              CustomButton(
                onPressed: () {},
                borderRadius: Sizes.RADIUS_8,
                title: StringConst.LETS_GO + place,
                textStyle: theme.textTheme.titleLarge?.copyWith(
                  color: AppColors.white,
                ),
              ),
              SpaceH24(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double width = assignWidth(context: context, fraction: 1);
    double height = assignHeight(context: context, fraction: 0.4);
    double widthOfFab = Sizes.WIDTH_56;
    double heightOfFab = Sizes.HEIGHT_56;
    double kPadding = Sizes.PADDING_16;
    return Container(
      height: height + (heightOfFab / 2),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: const Radius.circular(Sizes.RADIUS_60),
            ),
            child: Image.asset(
              imagePath,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          _buildContent(context),
          Positioned(
            top: height - (heightOfFab / 2),
            left: width - (widthOfFab + kPadding),
            child: Container(
              width: widthOfFab,
              height: heightOfFab,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.all(
                  const Radius.circular(
                    Sizes.RADIUS_60,
                  ),
                ),
                boxShadow: [
                  Shadows.customContainerShadow(
                    color: AppColors.accentColor40,
                    blurRadius: 12,
                  )
                ],
              ),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.solidHeart,
                  color: AppColors.accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double height = assignHeight(context: context, fraction: 0.4);
    return Container(
      height: height,
      padding: EdgeInsets.only(
        top: Sizes.PADDING_32,
        left: Sizes.PADDING_24,
        right: Sizes.PADDING_24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Sizes.WIDTH_50,
                height: Sizes.HEIGHT_50,
                child: CustomButton2(
                  onPressed: () =>
                      AutoRouter.of(context).pop(),
                  icon: Icons.arrow_back_ios,
                  borderRadius: Sizes.RADIUS_8,
                ),
              ),
              Container(
                width: Sizes.WIDTH_64,
                height: Sizes.WIDTH_32,
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.black10,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(Sizes.RADIUS_20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$rating",
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: AppColors.white,
                        fontSize: Sizes.TEXT_SIZE_14,
                      ),
                    ),
                    SpaceW4(),
                    Icon(
                      Icons.star,
                      color: AppColors.yellow,
                      size: Sizes.ICON_SIZE_16,
                    )
                  ],
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.only(bottom: Sizes.PADDING_24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$place",
                      style: theme.textTheme.headlineMedium?.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: AppColors.yellow,
                          size: Sizes.ICON_SIZE_18,
                        ),
                        SpaceW4(),
                        Text(
                          "$location",
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: AppColors.yellow,
                            fontSize: Sizes.TEXT_SIZE_20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                SvgPicture.asset(
                  ImagePath.CLOUD,
                  width: Sizes.WIDTH_30,
                  height: Sizes.HEIGHT_30,
                  fit: BoxFit.cover,
                ),
                SpaceW8(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: StringConst.TEMPERATURE,
                        style: theme.textTheme.headlineMedium?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(2, -4),
                          child: Text(
                            StringConst.CELSIUS,
                            textScaleFactor: 0.7,
                            style: theme.textTheme.titleLarge?.copyWith(
                              color: AppColors.white,
                              fontSize: Sizes.TEXT_SIZE_20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildExploreCards(List<ExploreCardItem> exploreItems) {
    List<Widget> items = [];

    for (int index = 0; index < exploreItems.length; index++) {
      items.add(
        ExploreCard(
          title: exploreItems[index].title,
          content: exploreItems[index].content,
          imagePath: exploreItems[index].imagePath,
          tags: exploreItems[index].tags!,
          rating: exploreItems[index].rating!,
        ),
      );
    }
    return items;
  }

  Widget _buildAttractionCards(BuildContext context) {
    return Container(
      height: assignHeight(context: context, fraction: 0.30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Data.attractionCardItems.length,
        padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_8),
        itemBuilder: (BuildContext context, int index) {
          return AttractionCard(
            title: Data.attractionCardItems[index].title,
            content: Data.attractionCardItems[index].content,
            imagePath: Data.attractionCardItems[index].imagePath,
            rating: Data.attractionCardItems[index].rating!,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SpaceW16();
        },
      ),
    );
  }
}
