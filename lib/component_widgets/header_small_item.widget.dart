import 'package:flutter/material.dart';

class HeaderSmallItem extends StatelessWidget {

  final String title;

  const HeaderSmallItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headline6,);
  }
}
