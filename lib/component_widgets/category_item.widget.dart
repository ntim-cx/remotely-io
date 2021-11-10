import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';

class CategoryItem extends StatelessWidget {
  final bool isVertical;
  final String featureImage;
  final String title;
  final String subTitle;
  final Function onTap;

  const CategoryItem(
      {Key key,
      @required this.isVertical,
      @required this.featureImage,
      @required this.title,
      this.onTap,
      this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final previewImage = Container(
      width: isVertical ? 120 : 68,
      height: isVertical ? 104 : 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: AppColors.colorWhiteShade),
      child: Image.asset(
        featureImage,
        fit: BoxFit.cover,
      ),
    );

    final categoryDescription = Column(
      crossAxisAlignment:
          isVertical ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        Utils.verticalSpacer(),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );

    return Container(
      padding: EdgeInsets.all(8.0),
      child: isVertical
          ? Column(
              children: [
                previewImage,
                Utils.verticalSpacer(),
                categoryDescription
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                previewImage,
                Utils.horizontalSpacer(),
                categoryDescription
              ],
            ),
    );
  }
}
