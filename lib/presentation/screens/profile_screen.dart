import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/album_cover.dart';
import 'package:roam/presentation/widgets/custom_appbar.dart';
import 'package:roam/presentation/widgets/custom_button.dart';
import 'package:roam/presentation/widgets/custom_button_2.dart';
import 'package:roam/presentation/widgets/journey_card.dart';
import 'package:roam/presentation/widgets/section_heading.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/values/values.dart';

const double kPaddingHorizontal = Sizes.PADDING_24;

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          children: [
            SectionHeading(
              title1: StringConst.PHOTO_STORIES,
              hasTitle2: false,
            ),
            SpaceH16(),
            SectionHeading(
              title1: StringConst.JOURNEYS,
              hasTitle2: false,
            ),
            SpaceH16(),
            _buildAppBar(),
            Column(
              children: _buildJourneyCards(Data.journeyItems),
            ),
            SpaceH16(),
            CustomButton(
              onPressed: () {},
              title: StringConst.SEE_JOURNEYS,
              color: AppColors.white,
              borderRadius: Sizes.RADIUS_8,
              borderSide: BorderSide(
                width: Sizes.WIDTH_1,
                color: AppColors.accentColor,
              ),
              textStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.accentColor,
              ),
            )
          ],
        ),
      ),
    );
  }

//  Wrap(
//  spacing: Sizes.SIZE_8,
//  runSpacing: Sizes.SIZE_8,
//  children: _buildAlbum(Data.albumItems),
//  )
  List<Widget> _buildAlbum(List<AlbumCoverItem> albumItems) {
    List<Widget> items = [];

    for (int index = 0; index < albumItems.length; index++) {
      items.add(
        AlbumCover(
          title: albumItems[index].title,
          imagePath: albumItems[index].imagePath,
          width:
              assignWidth(context: context, fraction: albumItems[index].width),
        ),
      );
    }

    return items;
  }

  List<Widget> _buildJourneyCards(List<JourneyCardItem> journeyItems) {
    List<Widget> items = [];

    for (int index = 0; index < journeyItems.length; index++) {
      items.add(
        JourneyCard(
          title: journeyItems[index].title,
          subtitle: journeyItems[index].subtitle,
          imagePath: journeyItems[index].imagePath,
          images: Data.profileStackedImage,
          rating: journeyItems[index].rating,
          collaborators: journeyItems[index].collaborators,
        ),
      );
    }
    return items;
  }

  Widget _buildProfile() {
    return Container(
      child: Stack(
        children: [
          SvgPicture.asset(ImagePath.BLUE_ELLIPSE),
          SvgPicture.asset(ImagePath.SEMI_CIRCLE),
          SvgPicture.asset(ImagePath.YELLOW_CIRCLE),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
      child: CustomAppBar(
        trailingColor: AppColors.grey,
        leading: Container(
          width: Sizes.WIDTH_48,
          height: Sizes.HEIGHT_48,
          child: CustomButton2(
            onPressed: () {},
            borderRadius: Sizes.RADIUS_8,
            icon: FeatherIcons.settings,
            iconColor: AppColors.grey,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

//  Widget _buildProfile() {
//    return Container();
//  }
}
