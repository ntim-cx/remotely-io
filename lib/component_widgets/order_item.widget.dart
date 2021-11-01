import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';

class OrderItem extends StatelessWidget {
  final String orderNumber;
  final String deliveryDate;
  final String title;
  final String featureImage;

  const OrderItem(
      {Key key,
      this.orderNumber,
      this.deliveryDate,
      this.title,
      this.featureImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final previewImage = SvgPicture.asset(
      featureImage,
      width: 104,
      height: 98,
    );

    final productDetails = ListView(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "#$orderNumber",
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: AppColors.colorSecondary),
          ),
        ),
        Utils.verticalSpacer(space: 8),
        Text(
          "Delivered $deliveryDate",
          style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 12.0),
        ),
        Utils.verticalSpacer(space: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        )
      ],
    );

    return Container(
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0)),
                child: previewImage,
              ),
              Utils.horizontalSpacer(space: 8),
              productDetails
            ],
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.colorWhiteShade,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
