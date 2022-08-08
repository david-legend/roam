import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roam/presentation/widgets/custom_button.dart';
import 'package:roam/presentation/widgets/custom_list_tile.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/routes/router.gr.dart';
import 'package:roam/values/values.dart';

class FollowListItem {
  FollowListItem({
    required this.title,
    required this.imagePath,
    this.stars = 0,
  });

  final String title;
  final String imagePath;
  final int stars;
}

class FollowScreen extends StatelessWidget {
  List<FollowListItem> items = [
    FollowListItem(
      title: StringConst.LESLIE,
      imagePath: ImagePath.LESLIE,
      stars: 31,
    ),
    FollowListItem(
      title: StringConst.DARELL,
      imagePath: ImagePath.DARELL,
      stars: 17,
    ),
    FollowListItem(
      title: StringConst.HAWKINS,
      imagePath: ImagePath.HAWKINS,
      stars: 27,
    ),
    FollowListItem(
      title: StringConst.CODY,
      imagePath: ImagePath.CODY,
      stars: 27,
    ),
    FollowListItem(
      title: StringConst.JANE,
      imagePath: ImagePath.JANE,
      stars: 9,
    ),
    FollowListItem(
      title: StringConst.ESTHER,
      imagePath: ImagePath.ESTHER,
      stars: 18,
    ),
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
          Text(
            StringConst.FOLLOW_FRIENDS,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: AppColors.secondaryColor,
              fontSize: Sizes.TEXT_SIZE_20,
            ),
          ),
          SpaceH20(),
          ..._buildFollowersList(items),
          SpaceH20(),
          CustomButton(
            onPressed: () {
              AutoRouter.of(context).push(RootScreenRoute());
            },
            height: Sizes.HEIGHT_56,
            title: StringConst.FINISH,
            borderRadius: Sizes.RADIUS_8,
            textStyle: theme.textTheme.titleLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildFollowersList(List<FollowListItem> itemList) {
    List<Widget> items = [];

    for (int index = 0; index < itemList.length; index++) {
      items.add(
        CustomListTile(
          title: itemList[index].title,
          imagePath: itemList[index].imagePath,
          stars: itemList[index].stars,
        ),
      );
    }
    return items;
  }
}
