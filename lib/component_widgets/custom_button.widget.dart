import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final bool isLoading;
  final bool isSmall;
  final String icon;
  final double width;
  final Function onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;

  const CustomButton(
      {Key key,
      this.isLoading,
      this.isSmall,
      this.icon,
      this.width,
      this.onPressed,
      this.text,
      this.backgroundColor = AppColors.colorPrimary,
      this.textColor = Colors.black,
      this.iconColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: isSmall ? 42.0 : 60.0,
      child: MaterialButton(
        onPressed: this.onPressed,
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(color: textColor),
            ),
            Utils.horizontalSpacer(),
            icon == null
                ? Container()
                : SvgPicture.asset(
                    icon,
                    color: iconColor,
                  ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: backgroundColor,
      ),
    );
  }
}
