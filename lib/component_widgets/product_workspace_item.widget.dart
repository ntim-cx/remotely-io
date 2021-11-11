import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:remotely_io/component_widgets/bookmark_icon.widget.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';

class ProductWorkspaceItem extends StatelessWidget {
  final String featureImage;
  final String title;
  final Function onTap;
  final double rating;
  final double price;

  const ProductWorkspaceItem(
      {Key key,
      this.featureImage,
      this.title,
      this.onTap,
      this.rating,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final previewImage = Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        featureImage,
        width: 119,
        height: 90,
      ),
    );

    final productDetails = Container(
      width: 150,
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(fontWeight: FontWeight.w400),
          ),
          Utils.verticalSpacer(space: 8),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.caption.copyWith(
                color: AppColors.colorSecondary, fontWeight: FontWeight.w800),
          ),
          Utils.verticalSpacer(space: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$rating",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: AppColors.colorGreyDeeper),
              ),
              Utils.horizontalSpacer(space: 4),
              RatingBar.builder(
                initialRating: 1,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 1,
                itemSize: 12.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  size: 12.0,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
    );

    return Container(
      height: 188,
      width: 171,
      padding: EdgeInsets.only(left: 11, right: 11, top: 10, bottom: 6),
      child: Stack(
        children: [
          previewImage,
          Align(
              alignment: Alignment.topRight, child: BookmarkIcon(onTap: () {})),
          Positioned(top: 70, child: productDetails),
          //productDetails
        ],
      ),
      decoration: BoxDecoration(
        color: AppColors.colorWhiteShade,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
