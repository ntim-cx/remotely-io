import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remotely_io/component_widgets/category_item.widget.dart';
import 'package:remotely_io/component_widgets/custom_button.widget.dart';
import 'package:remotely_io/component_widgets/header_item.widget.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';
import 'package:remotely_io/constants/images.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final topPreview = Stack(
      children: [
        Container(
          //padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular now",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1,
              ),
              Utils.verticalSpacer(),
              Container(
                padding: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: AppColors.colorMain,
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Text(
                        "Adjustable Office Chairs",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Utils.verticalSpacer(space: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "Hughlan Workspace",
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: AppColors.colorGreyDeeper),
                            children: [
                              TextSpan(
                                  text: " \u{2022} 4.8",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                      color:
                                      AppColors.colorWhiteShade)),
                            ],
                          ),
                        ),
                        Utils.horizontalSpacer(space: 8),
                        RatingBar.builder(
                          initialRating: 1,
                          minRating: 1,
                          itemSize: 12,
                          direction: Axis.horizontal,
                          itemCount: 1,
                          itemPadding:
                          EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ],
                    ),
                    Utils.verticalSpacer(space: 20),
                    Row(
                      children: [
                        CustomButton(
                          isSmall: true,
                          width: 120,
                          onPressed: () {},
                          text: "View Item",
                        ),
                        Utils.horizontalSpacer(space: 8),
                        IconButton(
                          iconSize: 42,
                          icon: Container(
                            padding: EdgeInsets.all(8.0),
                            child:
                            SvgPicture.asset(AppImages.ic_add_to_cart),
                            decoration: BoxDecoration(
                                color: Color(0xFFA6A798).withOpacity(0.2),
                                shape: BoxShape.circle),
                          ),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.57,
          child: Image.asset(
            AppImages.previewImageOne,
          ),
        )
      ],
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            padding: EdgeInsets.all(8.0),
            width: 42,
            height: 42,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              AppImages.profileImage,
              width: 42,
              height: 42,
            ),
          ),
          actions: [
            actionIcon(AppImages.ic_search, () {}),
            Utils.horizontalSpacer(space: 8),
            actionIcon(AppImages.ic_wishlist, () {})
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Utils.verticalSpacer(space: 20),
              topPreview,
              Utils.verticalSpacer(),
              HeaderItem(title: "WorkSpace", isVertical: false,),
              CategoryItem(isVertical: true , featureImage: AppImages.categoryImageOne, title: "Developer"),

              /*ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem(isVertical: true , featureImage: AppImages.categoryImageOne, title: "Developer"),
                ],

              )*/
            ],
          ),
        ));
  }
}

Widget actionIcon(String icon, Function onTap, {Color background}) {
  return IconButton(
    icon: Container(
      padding: EdgeInsets.all(8.0),
      child: SvgPicture.asset(icon),
      decoration: BoxDecoration(
          color: background ?? Colors.white,
          border: Border.all(
            color: AppColors.colorGreyLighter,
          ),
          shape: BoxShape.circle),
    ),
    onPressed: onTap,
  );
}
