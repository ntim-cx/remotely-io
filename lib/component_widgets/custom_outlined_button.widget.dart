import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  const CustomOutlinedButton({Key key, this.onPressed, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.transparent,
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      minWidth: 60.0,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 1.0)),
    );
  }
}
