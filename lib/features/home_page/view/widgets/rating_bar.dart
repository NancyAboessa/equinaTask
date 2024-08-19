import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:nancyaboessatask/core/utils/app_icons/app_icons.dart';

class Rating extends StatelessWidget {
  Rating({
    super.key,
    required this .initialRating,
    required this.itemSize,
  });
  double initialRating;
  double itemSize;
  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: initialRating,
      size: itemSize,
      maxRating: 5,
      direction: Axis.horizontal,
       filledIcon:AppIcons.star, emptyIcon: AppIcons.emptyStar,
      onRatingChanged: (double ) {  },
    );
  }
}