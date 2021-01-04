import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/empty.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/presentation/widgets/stacked_images.dart';
import 'package:roam/values/values.dart';

class SavedPlaceItem {
  SavedPlaceItem({
    @required this.title,
    @required this.subtitle,
    @required this.imagePath,
    this.likes,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final int likes;
}

class SavedPlacesCard extends StatelessWidget {
  SavedPlacesCard({
    this.width,
    this.height,
    this.imagePath,
    this.title,
    this.subtitle,
    this.images,
    this.hasLikes = true,
    this.likes,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_8,
      ),
    ),
  });

  final double width;
  final double height;
  final String imagePath;
  final String title;
  final String subtitle;
  final BorderRadiusGeometry borderRadius;
  final bool hasLikes;
  final int likes;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = assignWidth(context: context, fraction: 1);
    double heightOfCard = assignHeight(context: context, fraction: 0.225);
    double kPadding = Sizes.PADDING_14;

    return Container(
      width: (width ?? widthOfCard),
      height: (height ?? heightOfCard),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.all(kPadding),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: borderRadius,
                child: Image.asset(
                  imagePath,
                  width: (width ?? widthOfCard * 0.35) - (kPadding * 2),
                  height: height ?? heightOfCard,
                  fit: BoxFit.cover,
                ),
              ),
              SpaceW8(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headline6,
                    ),
                    SpaceH8(),
                    Text(
                      subtitle,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyText2.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SpaceH8(),
                    hasLikes
                        ? Row(
                            children: [
                              StackedImages(
                                images: images,
                                extraImagesLength: likes,
                              ),
                              SpaceW4(),
                              Text(
                                StringConst.PEOPLE_LIKES,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyText2.copyWith(
                                  color: AppColors.primaryColor,
                                  fontSize: Sizes.TEXT_SIZE_12,
                                ),
                              ),
                            ],
                          )
                        : Empty(),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          FontAwesomeIcons.solidHeart,
                          color: AppColors.accentColor,
                          size: Sizes.ICON_SIZE_20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
