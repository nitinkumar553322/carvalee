import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listcurrency1ItemWidget extends StatelessWidget {
  Listcurrency1ItemWidget({
    Key? key,
    this.onTapColumnmarutialt,
  }) : super(
          key: key,
        );

  VoidCallback? onTapColumnmarutialt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        136,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: getVerticalSize(
            131,
          ),
          width: getHorizontalSize(
            136,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Rs.",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: getVerticalSize(
                    131,
                  ),
                  width: getHorizontalSize(
                    136,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 24,
                          ),
                          child: Text(
                            "4.57 Lakh",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.labelLargeBlack900,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            onTapColumnmarutialt?.call();
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgMarutialto1667634241,
                                height: getVerticalSize(
                                  83,
                                ),
                                width: getHorizontalSize(
                                  133,
                                ),
                                margin: getMargin(
                                  left: 3,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Text(
                                  "Hyundai Santro 2023",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall12_1,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    top: 4,
                                    right: 1,
                                  ),
                                  child: Text(
                                    "Onwards",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall9,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
