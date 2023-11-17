import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsItemWidget extends StatelessWidget {
  NewsItemWidget({
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
        ),
        decoration: AppDecoration.outline3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              // alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle75165x358,
                  height: getVerticalSize(
                    167,
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
            Padding(
              padding: getPadding(
                left: 6,
                top: 8,
                right: 68,
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 6,
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
                    child: Text(
                      "13 hours ago by loren epsom",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallLight_2,
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
