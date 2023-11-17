import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class CompareNavbarItemWidget extends StatelessWidget {
  CompareNavbarItemWidget({
    Key? key,
    this.onTapViewcomparison,
  }) : super(
          key: key,
        );

  VoidCallback? onTapViewcomparison;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(215),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 250,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle13,
                                  height: getVerticalSize(143),
                                  width: getHorizontalSize(141),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(8)),
                                  alignment: Alignment.topRight),
                              Text("Suzuki Swift Force Gurkha1",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelMedium),
                              Opacity(
                                opacity: 0.5,
                                child: Padding(
                                  padding: getPadding(top: 1, bottom: 1),
                                  child: Text("Rs. 5,85,001",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelSmallOnPrimaryContainer),
                                ),
                              ),
                            ]),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage2,
                              height: getVerticalSize(31),
                              width: getHorizontalSize(33),
                              alignment: Alignment.topCenter,
                            ),
                            Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle13,
                                  height: getVerticalSize(143),
                                  width: getHorizontalSize(141),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(8)),
                                  alignment: Alignment.topRight),
                              Text("Suzuki Swift Force Gurkha",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelMedium),
                              Opacity(
                                opacity: 0.5,
                                child: Padding(
                                  padding: getPadding(top: 1, bottom: 1),
                                  child: Text("Rs. 5,85,001",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelSmallOnPrimaryContainer),
                                ),
                              ),
                            ]),
                          ]),
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapRowviewcomparis(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 98.0),
                            child: Container(
                              decoration: AppDecoration.outline9.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: OutlineGradientButton(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(1),
                                    top: getVerticalSize(1),
                                    right: getHorizontalSize(1),
                                    bottom: getVerticalSize(1)),
                                strokeWidth: getHorizontalSize(1),
                                gradient: LinearGradient(
                                    begin: Alignment(0.5, 0),
                                    end: Alignment(0.5, 1),
                                    colors: [
                                      appTheme.redA700,
                                      appTheme.redA700.withOpacity(0.83)
                                    ]),
                                corners: Corners(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("View Comparison.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.labelLargeRedA700),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

onTapRowviewcomparis(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
}
