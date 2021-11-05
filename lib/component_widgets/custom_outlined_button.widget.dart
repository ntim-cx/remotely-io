import 'package:flutter/material.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final String icon;

  const CustomOutlinedButton({Key key, this.onPressed, this.text, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: (icon != null )? MainAxisAlignment.start: MainAxisAlignment.center,
          children: [
            (icon == null)
                ? Container()
                : Image.asset(
                    icon,
                    width: 28,
                    height: 28,
                  ),
            (icon == null) ? Container() : Utils.horizontalSpacer(space: 20),
            Text(
              text,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: AppColors.colorGreyDeep, width: 1.0)),
    );
  }
}
