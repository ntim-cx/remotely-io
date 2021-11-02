import 'package:flutter/material.dart';
import 'package:remotely_io/constants/colors.dart';

class FeatureItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const FeatureItem({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
      decoration: BoxDecoration(color: AppColors.colorWhiteShade),
      child: Text(title),
    );
  }
}
