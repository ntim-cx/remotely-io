import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remotely_io/constants/images.dart';

class BookmarkIcon extends StatelessWidget {
  final Function onTap;
  const BookmarkIcon({Key key, @required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: SvgPicture.asset(AppImages.ic_bookmark_heart),
    );
  }
}
