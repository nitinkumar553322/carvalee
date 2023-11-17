import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsedCarsItemWidget extends StatelessWidget {
  const UsedCarsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(
            left: 13,
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.blueA700,
              width: getHorizontalSize(
                1,
              ),
            ),
            borderRadius: BorderRadiusStyle.circleBorder40,
          ),
          child: Container(
            height: getSize(
              80,
            ),
            width: getSize(
              80,
            ),
            padding: getPadding(
              all: 20,
            ),
            decoration: AppDecoration.outline2.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup9,
                  height: getSize(
                    40,
                  ),
                  width: getSize(
                    40,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: getPadding(
              top: 12,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleSmallBlack900_1,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 3,
          ),
          child: Text(
            "View all cars by Brand",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
