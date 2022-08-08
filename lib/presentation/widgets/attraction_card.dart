import 'package:flutter/material.dart';
import 'package:roam/presentation/layout/adaptive.dart';
import 'package:roam/presentation/widgets/image_clipper.dart';
import 'package:roam/presentation/widgets/rating.dart';
import 'package:roam/values/values.dart';

class AttractionCardItem {
  AttractionCardItem({
    required this.title,
    required this.content,
    required this.imagePath,
    this.rating,
  });

  final String title;
  final String imagePath;
  final String content;
  final double? rating;
}

class AttractionCard extends StatelessWidget {
  AttractionCard({
    required this.title,
    required this.content,
    required this.imagePath,
    this.width,
    this.height,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_12,
      ),
    ),
    this.rating = 0.0,
    this.elevation = Sizes.ELEVATION_2,
  });

  final String title;
  final String content;
  final String imagePath;
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius;
  final double rating;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = width ?? assignWidth(context: context, fraction: 0.7);
    double heightOfCard =
        height ?? assignHeight(context: context, fraction: 0.30);
    return Container(
      width: widthOfCard,
      height: heightOfCard,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        elevation: elevation,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: const Radius.circular(Sizes.RADIUS_12),
                topRight: const Radius.circular(Sizes.RADIUS_12),
              ),
              child: ClipPath(
                clipper: const ImageClipper(),
                child: Image.asset(
                  imagePath,
                  width: widthOfCard,
                  height: heightOfCard * 0.55,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.primaryText2,
                    ),
                  ),
                  Rating(
                    rating: rating,
                    hasContent: false,
                  ),
                  Text(
                    content,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppColors.primaryText3,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
