import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';
import 'package:remotely_io/constants/images.dart';

class HeaderItem extends StatelessWidget {
  final bool isVertical;
  final String title;
  final String subHeader;

  const HeaderItem({Key key, this.isVertical, this.title, this.subHeader})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final header = Text(
      title,
      style: Theme.of(context).textTheme.subtitle1,
    );

    return isVertical
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header,
              Utils.verticalSpacer(),
              Text(
                subHeader,
                style: TextStyle(color: AppColors.colorGreyDeeper),
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              header,
              Row(
                children: [
                  Text("See more",style: Theme.of(context).textTheme.caption.copyWith(fontWeight: FontWeight.w500,color: AppColors.colorGreyDeeper),),
                  Utils.horizontalSpacer(space: 8),
                  SvgPicture.asset(AppImages.ic_right_arrow,
                      color: AppColors.colorGreyDeeper)
                ],
              )
            ],
          );
  }
}
