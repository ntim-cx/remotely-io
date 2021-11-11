import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:remotely_io/component_widgets/bookmark_icon.widget.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/app_text.dart';
import 'package:remotely_io/constants/colors.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String category;
  final double rating;
  final double price;
  final String featureImage;

  const ProductItem(
      {Key key,
      this.title,
      this.category,
      this.rating,
      this.price,
      this.featureImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final featureProductImage = Container(
      width: 105,
      height: 86,
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              featureImage,
              width: 60,
              height: 60,
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: BookmarkIcon(onTap: () {}))),
        ],
      ),
      decoration: BoxDecoration(
        color: AppColors.colorWhiteShade,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );

    final productSubtitle = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: "$category",
            children: [
              TextSpan(
                  text: " ${AppString.dot} $rating",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: AppColors.colorGreyDeeper))
            ],
          ),
          style: Theme.of(context)
              .textTheme
              .caption
              .copyWith(color: AppColors.colorGreyDeep),
        ),
        RatingBar.builder(
          initialRating: 1,
          minRating: 1,
          direction: Axis.horizontal,
          itemCount: 1,
          itemSize: 12,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            size: 12.0,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
      ],
    );

    final productDescription = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        Utils.verticalSpacer(space: 4),
        productSubtitle,
        Utils.verticalSpacer(space: 8),
        Text(
          "\$$price",
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: AppColors.colorSecondary),
        )
      ],
    );

    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: AppColors.colorGreyDeep)
      ),
      child: Row(
        children: [
          featureProductImage,
          Utils.horizontalSpacer(),
          productDescription
        ],
      ),
    );
  }
}
