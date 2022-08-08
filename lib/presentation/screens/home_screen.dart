import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/custom_appbar.dart';
import 'package:roam/presentation/widgets/discover_card.dart';
import 'package:roam/presentation/widgets/place_card.dart';
import 'package:roam/presentation/widgets/search_input.dart';
import 'package:roam/presentation/widgets/section_heading.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/presentation/widgets/trending_card.dart';
import 'package:roam/routes/router.gr.dart';
import 'package:roam/values/values.dart';

const double kSidePadding = Sizes.PADDING_24;
const double kButtonWidth = Sizes.WIDTH_56;

class DiscoverCardItem {
  DiscoverCardItem({
    required this.title,
    required this.icon,
    this.color,
    this.backgroundColor,
  });

  final String title;
  final String icon;
  final Color? color;
  final Color? backgroundColor;
}

class TrendingCardItem {
  TrendingCardItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.rating = 0,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final double rating;
}

class PlaceCardItem {
  PlaceCardItem({
    required this.title,
    required this.subtitle,
    required this.content,
    required this.imagePath,
    this.rating = 0,
  });

  final String title;
  final String subtitle;
  final String content;
  final String imagePath;
  final double rating;
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
            style: theme.textTheme.headlineMedium?.copyWith(
              color: AppColors.primaryColor,
              fontSize: Sizes.TEXT_SIZE_28,
            ),
          ),
          SpaceH16(),
          SearchInput(),
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
              itemCount: Data.discoverCardItems.length,
              itemBuilder: (BuildContext context, int index) {
                return DiscoverCard(
                  title: Data.discoverCardItems[index].title,
                  backgroundColor:
                      Data.discoverCardItems[index].backgroundColor,
                  color: Data.discoverCardItems[index].color,
                  child: SvgPicture.asset(
                    Data.discoverCardItems[index].icon,
                    width: Sizes.WIDTH_40,
                    height: Sizes.HEIGHT_40,
                    color: Data.discoverCardItems[index].color,
                  ),
                  onTap: () {},
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
              itemCount: Data.trendingItems.length,
              padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_8),
              itemBuilder: (BuildContext context, int index) {
                return TrendingCard(
                  title: Data.trendingItems[index].title,
                  subtitle: Data.trendingItems[index].subtitle,
                  imagePath: Data.trendingItems[index].imagePath,
                  rating: Data.trendingItems[index].rating,
                  onTap: () {
                    AutoRouter.of(context).push(PlaceScreenRoute(
                      place: Data.trendingItems[index].title,
                      location: Data.trendingItems[index].subtitle,
                      imagePath: Data.trendingItems[index].imagePath,
                      rating: Data.trendingItems[index].rating,
                    ));
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SpaceW16();
              },
            ),
          ),
          SpaceH24(),
          SectionHeading(
            title1: StringConst.FOR_YOU,
            title2: StringConst.SEE_ALL,
          ),
          SpaceH12(),
          Container(
            height: assignHeight(context: context, fraction: 0.35),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: Data.placeCardItems.length,
              padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_8),
              itemBuilder: (BuildContext context, int index) {
                return PlaceCard(
                  title: Data.placeCardItems[index].title,
                  subtitle: Data.placeCardItems[index].subtitle,
                  content: Data.placeCardItems[index].content,
                  imagePath: Data.placeCardItems[index].imagePath,
                  rating: Data.placeCardItems[index].rating,
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

}
