import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';

class CustomCollectionItem extends StatelessWidget {
  final String featureImage;
  final Function onTap;
  final String title;

  const CustomCollectionItem(
      {Key key, this.featureImage, this.onTap, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final previewImage = Container(
      padding: EdgeInsets.all(16.0),
      child: SvgPicture.asset(featureImage),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );

    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListView(
        children: [
          previewImage,
          Utils.verticalSpacer(space: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Utils.verticalSpacer(space: 8),
          Text(
            "See collection",
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: AppColors.colorSecondary),
          ),
        ],
      ),
    );
  }
}
