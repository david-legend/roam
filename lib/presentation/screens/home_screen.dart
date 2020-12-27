import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/custom_appbar.dart';
import 'package:roam/presentation/widgets/custom_button_2.dart';
import 'package:roam/presentation/widgets/custom_text_field.dart';
import 'package:roam/presentation/widgets/custom_text_form_field.dart';
import 'package:roam/presentation/widgets/discover_card.dart';
import 'package:roam/presentation/widgets/section_heading.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/presentation/widgets/trending_card.dart';
import 'package:roam/values/values.dart';

const double kSidePadding = Sizes.PADDING_24;
const double kButtonWidth = Sizes.WIDTH_56;

class DiscoverCardItem {
  DiscoverCardItem({
    @required this.title,
    @required this.icon,
    this.color,
    this.backgroundColor,
  });

  final String title;
  final String icon;
  final Color color;
  final Color backgroundColor;
}

class TrendingCardItem {
  TrendingCardItem({
    @required this.title,
    @required this.subtitle,
    this.imagePath,
    this.rating,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final double rating;
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DiscoverCardItem> items = [
    DiscoverCardItem(
      title: StringConst.ANIMALS,
      icon: ImagePath.ELEPHANT,
      backgroundColor: AppColors.lightGreen70,
      color: AppColors.darkGreen,
    ),
    DiscoverCardItem(
      title: StringConst.ADVENTURE,
      icon: ImagePath.CAR,
      backgroundColor: AppColors.purple10,
      color: AppColors.purple,
    ),
    DiscoverCardItem(
      title: StringConst.MEALS,
      icon: ImagePath.MEAL,
      backgroundColor: AppColors.yellow10,
      color: AppColors.deepYellow,
    ),
    DiscoverCardItem(
      title: StringConst.ANIMALS,
      icon: ImagePath.ELEPHANT,
      backgroundColor: AppColors.lightGreen70,
      color: AppColors.darkGreen,
    ),
    DiscoverCardItem(
      title: StringConst.ADVENTURE,
      icon: ImagePath.CAR,
      backgroundColor: AppColors.purple10,
      color: AppColors.purple,
    ),
    DiscoverCardItem(
      title: StringConst.MEALS,
      icon: ImagePath.MEAL,
      backgroundColor: AppColors.yellow10,
      color: AppColors.deepYellow,
    ),
  ];

  List<TrendingCardItem> trendingItems = [
    TrendingCardItem(
      title: StringConst.LIMA_CITY,
      subtitle: StringConst.PERU,
      rating: 4.4,
      imagePath: ImagePath.LIMA,
    ),
    TrendingCardItem(
      title: StringConst.BALI,
      subtitle: StringConst.INDONESIA,
      rating: 4.5,
      imagePath: ImagePath.LIMA,
    ),
    TrendingCardItem(
      title: StringConst.RHODES,
      subtitle: StringConst.GREECE,
      rating: 4.4,
      imagePath: ImagePath.LIMA,
    ),
    TrendingCardItem(
      title: StringConst.HALONG_BAY,
      subtitle: StringConst.VIETNAM,
      rating: 4.3,
      imagePath: ImagePath.LIMA,
    ),
    TrendingCardItem(
      title: StringConst.VATICAN_CITY,
      subtitle: StringConst.ITALY,
      rating: 4.5,
      imagePath: ImagePath.LIMA,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfScreen = assignWidth(context: context, fraction: 1);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
        child: CustomAppBar(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: kSidePadding,
          vertical: Sizes.PADDING_8,
        ),
        children: [
          Text(
            StringConst.TRAVEL,
            style: theme.textTheme.headline5.copyWith(
              color: AppColors.primaryColor,
              fontSize: Sizes.TEXT_SIZE_28,
            ),
          ),
          SpaceH16(),
          _buildSearch(),
          SpaceH24(),
          SectionHeading(
            title1: StringConst.DISCOVER,
            title2: StringConst.SEE_ALL,
          ),
          SpaceH12(),
          Container(
            height: assignHeight(context: context, fraction: 0.125),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return DiscoverCard(
                  title: items[index].title,
                  backgroundColor: items[index].backgroundColor,
                  color: items[index].color,
                  child: SvgPicture.asset(
                    items[index].icon,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SpaceW8();
              },
            ),
          ),
          SpaceH24(),
          SectionHeading(
            title1: StringConst.TRENDING_SIGHTS,
            title2: StringConst.MOST_VISITED,
          ),
          SpaceH12(),
          Container(
            height: assignHeight(context: context, fraction: 0.3),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: trendingItems.length,
              padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_8),
              itemBuilder: (BuildContext context, int index) {
                return TrendingCard(
                  title: trendingItems[index].title,
                  subtitle: trendingItems[index].subtitle,
                  imagePath: trendingItems[index].imagePath,
                  rating: trendingItems[index].rating,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SpaceW16();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearch() {
    ThemeData theme = Theme.of(context);
    double widthOfScreen = assignWidth(context: context, fraction: 1);
    return Row(
      children: [
        Container(
          width: widthOfScreen - ((kSidePadding * 2) + kButtonWidth + 8),
          child: CustomTextFormField(
            textFormFieldStyle: theme.textTheme.subtitle1.copyWith(
              color: AppColors.secondaryColor,
            ),
            hintText: StringConst.SEARCH_HINT_TEXT,
            prefixIconColor: AppColors.primaryColor,
            hintTextStyle: theme.textTheme.bodyText2.copyWith(
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
