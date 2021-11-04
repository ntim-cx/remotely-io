import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';
import 'package:remotely_io/constants/images.dart';

class CartItem extends StatelessWidget {
  final String featuredImage;
  final String title;
  final String price;
  final int itemCount;
  final bool alternativeCart;
  final bool alternativeRemoveButton;
  final Function onItemCountChange;

  const CartItem(
      {Key key,
      this.featuredImage,
      this.title,
      this.price,
      this.itemCount,
      this.alternativeCart,
      this.alternativeRemoveButton,
      this.onItemCountChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final removeButton = MaterialButton(
        onPressed: () {},
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Text("Remove"),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),);
    
    final removeIconButton = Container(
      child: SvgPicture.asset(AppImages.ic_remove_cart_item),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.colorGreyDeeper
      ),
    );
    

    return Container(
      child: Row(
        children: [
          Container(
            child: Column(
              children: [],
            ),
          ),
          Utils.horizontalSpacer(),
          Column(children: [
            Text(title),
            Utils.verticalSpacer(),
            Text(
              "USD $price",
              style: TextStyle(color: AppColors.colorSecondary),
            ),
            Utils.verticalSpacer(),
            Row(
              children: [
                itemCountUpdate(AppImages.ic_minus, onTap: () {}),
                Utils.horizontalSpacer(),
                Text("1", style: TextStyle(
                  color: AppColors.colorGreyDeeper
                ),),
                Utils.horizontalSpacer(),
                itemCountUpdate(AppImages.ic_add, onTap: () {})
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: removeButton,
              ),
            )
          ])
        ],
      ),
    );
  }
}

Widget itemCountUpdate(String icon, {Function onTap}) {
  return InkWell(
    child: Container(
      padding: EdgeInsets.all(5.0),
      child: SvgPicture.asset(icon),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.colorGreyLight)),
    ),
  );
}
