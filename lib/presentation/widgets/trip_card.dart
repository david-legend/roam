import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/empty.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/presentation/widgets/stacked_images.dart';
import 'package:roam/values/values.dart';

class TripCard extends StatelessWidget {
  TripCard({
    this.width,
    this.height,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.content,
    required this.footer,
    this.icon = Icons.location_pin,
    this.images,
    this.hasCollaborators = true,
    this.collaborators = 7,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_8,
      ),
    ),
    this.imageBorderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_8,
      ),
    ),
  });

  final double? width;
  final double? height;
  final String imagePath;
  final String title;
  final String subtitle;
  final String content;
  final String footer;
  final IconData icon;
  final BorderRadiusGeometry borderRadius;
  final BorderRadius? imageBorderRadius;
  final List<String>? images;
  final bool hasCollaborators;
  final int collaborators;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = assignWidth(context: context, fraction: 1);
    double heightOfCard = assignHeight(context: context, fraction: 0.45);
    double kPadding = Sizes.PADDING_14;

    return Container(
      width: (width ?? widthOfCard),
      height: (height ?? heightOfCard),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.all(kPadding),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: imageBorderRadius,
                    child: Image.asset(
                      imagePath,
                      width: (width ?? widthOfCard) - (kPadding * 2),
                      height: (height ?? (heightOfCard * 0.6) - (kPadding * 2)),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SpaceH8(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.headlineSmall,
                      ),
                      Text(
                        subtitle,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: Sizes.TEXT_SIZE_12,
                        ),
                      ),
                    ],
                  ),
                  SpaceH8(),
                  Text(
                    content,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppColors.primaryText2,
                    ),
                  ),
                  SpaceH8(),
                  Row(
                    children: [
                      hasCollaborators
                          ? StackedImages(
                              images: images!,
                              extraImagesLength: collaborators,
                            )
                          : Empty(),
                      hasCollaborators ? SpaceW4() : Empty(),
                      hasCollaborators
                          ? Text(
                              StringConst.TRIP_COLLABORATORS,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: AppColors.primaryColor,
                                fontSize: Sizes.TEXT_SIZE_12,
                              ),
                            )
                          : Empty(),
                      Spacer(),
                      Icon(
                        icon,
                        size: Sizes.ICON_SIZE_16,
                        color: AppColors.accentColor,
                      ),
                      SpaceW4(),
                      Text(
                        footer,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: AppColors.accentColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                top: Sizes.PADDING_8,
                left: (width ?? widthOfCard) - (kPadding * 5),
                child: Container(
                  width: Sizes.WIDTH_18,
                  height: Sizes.HEIGHT_18,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(
                        Sizes.RADIUS_60,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: Sizes.ICON_SIZE_10,
                      color: AppColors.accentColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
