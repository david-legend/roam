import 'package:flutter/material.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/empty.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/presentation/widgets/stacked_images.dart';
import 'package:roam/values/values.dart';

class OldTripItem {
  OldTripItem({
    @required this.title,
    @required this.subtitle,
    @required this.imagePath,
    this.collaborators,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final int collaborators;
}

class OldTripCard extends StatelessWidget {
  OldTripCard({
    this.width,
    this.height,
    this.imagePath,
    this.title,
    this.subtitle,
    this.images,
    this.hasCollaborators = true,
    this.collaborators,
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
  final bool hasCollaborators;
  final int collaborators;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = assignWidth(context: context, fraction: 1);
    double heightOfCard = assignHeight(context: context, fraction: 0.18);
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headline6,
                  ),
                  Spacer(),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyText2.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Spacer(),
                  hasCollaborators
                      ? Row(
                          children: [
                            StackedImages(
                              images: images,
                              extraImagesLength: collaborators,
                            ),
                            SpaceW4(),
                            Text(
                              StringConst.TRIP_COLLABORATORS,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyText2.copyWith(
                                color: AppColors.primaryColor,
                                fontSize: Sizes.TEXT_SIZE_12,
                              ),
                            ),
                          ],
                        )
                      : Empty(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
