import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListkmplcounterItemWidget extends StatelessWidget {
  const ListkmplcounterItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 6,
          top: 11,
          right: 6,
          bottom: 11,
        ),
        decoration: AppDecoration.outline3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder3,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 6,
                top: 11,
                bottom: 10,
              ),
              child: Text(
                "8.8 kmpl",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 22,
              ),
              child: SizedBox(
                height: getVerticalSize(
                  43,
                ),
                child: VerticalDivider(
                  width: getHorizontalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: appTheme.black900,
                  endIndent: getHorizontalSize(
                    1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 25,
                bottom: 2,
              ),
              child: Text(
                "",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgImage42,
              height: getVerticalSize(
                33,
              ),
              width: getHorizontalSize(
                46,
              ),
              margin: getMargin(
                bottom: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
