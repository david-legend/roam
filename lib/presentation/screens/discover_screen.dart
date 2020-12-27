import 'package:flutter/material.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/custom_appbar.dart';
import 'package:roam/presentation/widgets/old_trip_card.dart';
import 'package:roam/presentation/widgets/section_heading.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/presentation/widgets/stacked_images.dart';
import 'package:roam/presentation/widgets/trip_card.dart';
import 'package:roam/values/values.dart';

const double kSidePadding = Sizes.PADDING_24;

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
        child: CustomAppBar(
          hasTrailing: false,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          StringConst.NEW_TRIP,
          style: theme.textTheme.subtitle1.copyWith(
            color: AppColors.white,
          ),
        ),
        icon: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: kSidePadding,
          vertical: Sizes.PADDING_8,
        ),
        children: [
          Text(
            StringConst.MY_TRIPS,
            style: theme.textTheme.headline5.copyWith(
              color: AppColors.primaryColor,
              fontSize: Sizes.TEXT_SIZE_28,
            ),
          ),
          SpaceH16(),
          TripCard(
            title: "Bali Adventure 2021",
            subtitle: "09 Jan - 21 Jan",
            content: StringConst.TRIP_SUMMARY,
            footer: "Indonesia",
            imagePath: ImagePath.CAR_TRIPS,
            images: Data.profileStackedImage,
          ),
          SpaceH24(),
          SectionHeading(
            title1: StringConst.OLD_TRIP,
            hasTitle2: false,
          ),
          SpaceH16(),
          ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: Data.oldTripItems.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return OldTripCard(
                imagePath: Data.oldTripItems[index].imagePath,
                title: Data.oldTripItems[index].title,
                subtitle: Data.oldTripItems[index].subtitle,
                images: Data.profileStackedImage,
                collaborators: Data.oldTripItems[index].collaborators,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SpaceH16();
            },
          ),
        ],
      ),
    );
  }
}
