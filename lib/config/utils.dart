import 'package:flutter/cupertino.dart';

class Utils{

  static Widget horizontalSpacer({double space = 16}){
    return SizedBox(width: space,);
  }
  static Widget verticalSpacer({double space = 16}){
    return SizedBox(height: space,);
  }
}