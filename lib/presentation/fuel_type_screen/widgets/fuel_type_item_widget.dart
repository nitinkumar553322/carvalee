import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FuelTypeItemWidget extends StatelessWidget {
  const FuelTypeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                CustomIconButton(
                  height: 56,
                  width: 56,
                  padding: getPadding(
                    all: 16,
                  ),
                  decoration: IconButtonStyleHelper.outlineBluegray100,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgMegaphone,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Text(
                    "Diesel",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmallGray80012,
                  ),
                ),
              ],
            ),
              Column(
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    padding: getPadding(
                      all: 16,
                    ),
                    decoration: IconButtonStyleHelper.outlineBluegray100,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgVolume,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "Petrol",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallGray80012,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    padding: getPadding(
                      all: 16,
                    ),
                    decoration: IconButtonStyleHelper.outlineBluegray100,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgComputer,


                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "CNG",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallGray80012,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    padding: getPadding(
                      all: 10,
                    ),
                    decoration: IconButtonStyleHelper.outlineBluegray100,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgRewind,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "LPG",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallGray80012,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    padding: getPadding(
                      all: 10,
                    ),
                    decoration: IconButtonStyleHelper.outlineBluegray100,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgTrash,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "Electric",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallGray80012,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CustomIconButton(
                    height: 56,
                    width: 56,
                    padding: getPadding(
                      all:
                      10,
                    ),
                    decoration: IconButtonStyleHelper.outlineBluegray100,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup356,

                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "Hybrid",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallGray80012,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

      ],
    );
  }
}
