import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:roam/presentation/widgets/empty.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/values/values.dart';

class Rating extends StatelessWidget {
  Rating({
    this.rating = 0,
    this.content = "",
    this.maxRating = 5,
    this.itemCount = 5,
    this.hasContent = true,
  });

  final double rating;
  final String content;
  final double maxRating;
  final int itemCount;
  final bool hasContent;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      child: Row(
        children: [
          Text(
            "$rating",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.grey200,
            ),
          ),
          SpaceW4(),
          RatingBar.builder(
            initialRating: rating,
            maxRating: maxRating,
            itemSize: Sizes.ICON_SIZE_12,
            itemCount: itemCount,
            ignoreGestures: true,
            direction: Axis.horizontal,
            allowHalfRating: true,
            unratedColor: AppColors.grey50,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: AppColors.yellow,
            ),
            onRatingUpdate: (rating){},
          ),
          hasContent ? SpaceW8() : Empty(),
          hasContent
              ? Text(
                  "$content",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.grey200,
                  ),
                )
              : Empty(),
        ],
      ),
    );
  }
}
