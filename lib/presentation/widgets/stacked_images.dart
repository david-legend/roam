import 'package:flutter/material.dart';
import 'package:roam/values/values.dart';

const double kWidth = Sizes.WIDTH_24;
const double kHeight = Sizes.HEIGHT_24;
const double kOffset = kWidth / 2;

class StackedImages extends StatelessWidget {
  StackedImages({
    @required this.images,
    this.hasMoreImages = true,
    this.extraImagesLength,
    this.width,
    this.widthOfImageItem = kWidth,
    this.heightOfImageItem = kHeight,
    this.offset = kOffset,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_20,
      ),
    ),
  });

  final List<String> images;
  final BorderRadiusGeometry borderRadius;
  final bool hasMoreImages;
  final int extraImagesLength;
  final double width;
  final double widthOfImageItem;
  final double heightOfImageItem;
  final double offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Stack(
        children: _buildStackedImages(context, images),
      ),
    );
  }

  List<Widget> _buildStackedImages(BuildContext context, List<String> images) {
    ThemeData theme = Theme.of(context);

    List<Widget> items = [];

    for (int index = 0; index < images.length; index++) {
      items.add(
        Container(
          width: widthOfImageItem,
          height: heightOfImageItem,
          margin: EdgeInsets.only(left: (offset * index)),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.secondaryColor,
              width: Sizes.WIDTH_2,
            ),
            borderRadius: borderRadius,
          ),
          child: ClipRRect(
            borderRadius: borderRadius,
            child: Image.asset(
              images[index],
              width: widthOfImageItem,
              height: heightOfImageItem,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    hasMoreImages
        ? items.add(
            Container(
              width: widthOfImageItem,
              height: heightOfImageItem,
              margin: EdgeInsets.only(left: (offset * items.length)),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: borderRadius,
              ),
              child: Center(
                child: Text(
                  "+$extraImagesLength",
                  style: theme.textTheme.bodyText2.copyWith(
                    color: AppColors.white,
                    fontSize: Sizes.TEXT_SIZE_10,
                  ),
                ),
              ),
            ),
          )
        : Container();
    return items;
  }
}
