import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roam/presentation/widgets/custom_button.dart';
import 'package:roam/presentation/widgets/interest_card.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/routes/router.gr.dart';
import 'package:roam/values/values.dart';

class InterestItem {
  InterestItem(this.title, this.imagePath);

  final String title;
  final String imagePath;
}

class SelectInterestScreen extends StatelessWidget {
  List<InterestItem> items = [
    InterestItem(StringConst.NATURE, ImagePath.THAILAND),
    InterestItem(StringConst.FOOD, ImagePath.FOOD),
    InterestItem(StringConst.PEOPLE, ImagePath.PEOPLE),
    InterestItem(StringConst.ADVENTURE, ImagePath.GREAT_WALL),
    InterestItem(StringConst.WILDLIFE, ImagePath.WILDLIFE),
    InterestItem(StringConst.CULTURE, ImagePath.VIETNAM_2),
    InterestItem(StringConst.BEACH, ImagePath.BEACHES_BALI),
    InterestItem(StringConst.MOUNTAIN, ImagePath.MOUNTAIN),
    InterestItem(StringConst.URBAN, ImagePath.URBAN),
    InterestItem(StringConst.RESORT, ImagePath.RESORTS),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.PADDING_24,
          vertical: Sizes.PADDING_36,
        ),
        children: [
          RichText(
            text: TextSpan(
              text: StringConst.HELLO,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: AppColors.secondaryColor,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: StringConst.KRISTIN,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryColor,
                  ),
                ),
                TextSpan(
                  text: StringConst.INTEREST,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          SpaceH16(),
          Text(
            StringConst.SELECT_5,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.grey,
            ),
          ),
          SpaceH16(),
          Wrap(
            spacing: Sizes.SIZE_16,
            runSpacing: Sizes.SIZE_16,
            children: _buildInterests(items),
          ),
          SpaceH24(),
          CustomButton(
            onPressed: () {
              AutoRouter.of(context).push(FollowScreenRoute());
            },
            height: Sizes.HEIGHT_56,
            title: StringConst.NEXT,
            borderRadius: Sizes.RADIUS_8,
            textStyle: theme.textTheme.titleLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildInterests(List<InterestItem> itemList) {
    List<Widget> items = [];

    for (int index = 0; index < itemList.length; index++) {
      items.add(
        InterestCard(
          title: itemList[index].title,
          imagePath: itemList[index].imagePath,
        ),
      );
    }
    return items;
  }
}
