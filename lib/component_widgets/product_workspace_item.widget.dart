import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final previewImage = SvgPicture.asset(
      featureImage,
      width: 119,
      height: 90,
    );

    final productDetails = ListView(
      children: [
        Flexible(
          child: Text(title),
        ),
        Utils.verticalSpacer(space: 8),
        Text("GHC $price"),
        Utils.verticalSpacer(space: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("$rating"),
            Utils.horizontalSpacer(space: 8),
            RatingBar.builder(
              initialRating: 1,
              minRating: 1,
              direction: Axis.horizontal,
              itemCount: 1,
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
    );

    return Container(
      height: 188,
      padding: EdgeInsets.only(left: 11, right: 11, top: 10, bottom: 6),
      child: Stack(
        children: [
          BookmarkIcon(onTap: () {}),
          previewImage,
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: productDetails,
          )
        ],
      ),
      decoration: BoxDecoration(
        color: AppColors.colorWhiteShade,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
