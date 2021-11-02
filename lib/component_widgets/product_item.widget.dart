import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remotely_io/component_widgets/bookmark_icon.widget.dart';
import 'package:remotely_io/config/utils.dart';
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
          SvgPicture.asset(
            featureImage,
            width: 60,
            height: 60,
          ),
          BookmarkIcon(onTap: (){}),
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
            children: [TextSpan(text: "$rating")],
          ),
        ),
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
    );

    final productDescription = Column(
      children: [
        Text(title),
        Utils.verticalSpacer(),
        productSubtitle,
        Utils.verticalSpacer(),
        Text(
          "\$$price",
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: AppColors.colorSecondary),
        )
      ],
    );

    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
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
