import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle21ItemWidget extends StatelessWidget {
  const Listrectangle21ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        149,
      ),
      width: getHorizontalSize(
        265,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle219,
            height: getVerticalSize(
              149,
            ),
            width: getHorizontalSize(
              265,
            ),
            radius: BorderRadius.only(
              topLeft: Radius.circular(
                getHorizontalSize(
                  4,
                ),
              ),
              topRight: Radius.circular(
                getHorizontalSize(
                  4,
                ),
              ),
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            svgPath: ImageConstant.imgIconparksolidplay,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
