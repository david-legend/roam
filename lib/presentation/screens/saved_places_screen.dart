import 'package:flutter/material.dart';
import 'package:roam/presentation/widgets/custom_appbar.dart';
import 'package:roam/presentation/widgets/saved_paces_card.dart';
import 'package:roam/presentation/widgets/search_input.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/values/values.dart';

const double kSidePadding = Sizes.PADDING_24;

class SavedPlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
          child: CustomAppBar(),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kSidePadding,
            vertical: Sizes.PADDING_8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConst.SAVED_PLACES,
                style: theme.textTheme.headline5.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: Sizes.TEXT_SIZE_28,
                ),
              ),
              SpaceH16(),
              SearchInput(),
              SpaceH20(),
              TabBar(
                labelColor: AppColors.primaryColor,
                labelStyle: theme.textTheme.subtitle1.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: Sizes.TEXT_SIZE_14,
                ),
                labelPadding: EdgeInsets.zero,
                unselectedLabelColor: AppColors.grey50,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: "Attractions",
                  ),
                  Tab(
                    text: "Hotels",
                  ),
                  Tab(
                    text: "Recommended",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildSavedPlacesCards(),
                    _buildSavedPlacesCards(),
                    _buildSavedPlacesCards(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSavedPlacesCards() {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: Data.savedPlacesItems.length,
      padding: EdgeInsets.only(top: Sizes.PADDING_16),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return SavedPlacesCard(
          imagePath: Data.savedPlacesItems[index].imagePath,
          title: Data.savedPlacesItems[index].title,
          subtitle: Data.savedPlacesItems[index].subtitle,
          images: Data.profileStackedImage,
          likes: Data.savedPlacesItems[index].likes,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SpaceH16();
      },
    );
  }
}
