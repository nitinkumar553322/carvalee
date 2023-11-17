import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReviewsItemWidget extends StatelessWidget {
  ReviewsItemWidget({
    Key? key,
    this.onTapColumnrectangle,
  }) : super(
          key: key,
        );

  VoidCallback? onTapColumnrectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrectangle?.call();
      },
      child: Container(
        margin: getMargin(
          left: 2,
          right: 2,
          bottom: 20
        ),
        decoration: AppDecoration.outline3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getVerticalSize(
                165,
              ),
              width: getHorizontalSize(
                358,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle753,
                    height: getVerticalSize(
                      165,
                    ),
                    width: getHorizontalSize(
                      358,
                    ),
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgRiheartline,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    alignment: Alignment.topRight,
                    margin: getMargin(
                      top: 16,
                      right: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 18,
                right: 7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alto K10 2023 - Whats New",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleSmallBlack900_1,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                      bottom: 1,
                    ),
                    child: Text(
                      "13 Hours ago",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallLight_2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 18,
                right: 7,
                bottom: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Reviewed By -",
                            style: CustomTextStyles.bodySmallLight_1,
                          ),
                          TextSpan(
                            text: " Lorem Ipsum",
                            style: CustomTextStyles.labelMediumBlack90010_3,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Text(
                      "1555 views",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallLight_2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
