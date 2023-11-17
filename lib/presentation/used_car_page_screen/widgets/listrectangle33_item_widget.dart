import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle33ItemWidget extends StatelessWidget {
  const Listrectangle33ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        75,
      ),
      width: getHorizontalSize(
        107,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle336,
            height: getVerticalSize(
              75,
            ),
            width: getHorizontalSize(
              107,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                7,
              ),
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMaskgroup29x29,
            height: getSize(
              29,
            ),
            width: getSize(
              29,
            ),
            alignment: Alignment.topRight,
            margin: getMargin(
              top: 8,
              right: 6,
            ),
          ),
        ],
      ),
    );
  }
}
