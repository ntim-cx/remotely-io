import 'package:flutter/material.dart';
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
      width: 142,
      height: 102,
      padding: EdgeInsets.all(16.0),
      child: Image.asset(
        featureImage,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );

    return Container(
      width: 158,
      height: 190,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppColors.colorWhiteShade,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          previewImage,
          Utils.verticalSpacer(space: 8),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 16),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 title,
                 style: Theme.of(context).textTheme.subtitle1,
               ),
               Utils.verticalSpacer(space: 8),
               Text(
                 "See collection",
                 style: Theme.of(context)
                     .textTheme
                     .caption
                     .copyWith(color: AppColors.colorSecondary, fontWeight: FontWeight.w800),
               ),
             ],
           ),
         )
        ],
      ),
    );
  }
}
