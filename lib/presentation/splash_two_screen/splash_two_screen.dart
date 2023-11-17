import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashTwoScreen extends StatelessWidget {
  const SplashTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIstockphoto113,
                height: getVerticalSize(
                  216,
                ),
                width: getHorizontalSize(
                  356,
                ),
                margin: getMargin(
                  top: 1,
                ),
              ),
              Container(
                height: getVerticalSize(
                  9,
                ),
                margin: getMargin(
                  top: 72,
                ),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: appTheme.redA700,
                    dotColor: appTheme.blueGray100,
                    dotHeight: getVerticalSize(
                      9,
                    ),
                    dotWidth: getHorizontalSize(
                      9,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 48,
                ),
                child: Text(
                  "Compare Cars",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleLargeBlack900Bold,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  308,
                ),
                margin: getMargin(
                  left: 24,
                  top: 21,
                  right: 24,
                ),
                child: Text(
                  "Borem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallBlack900_1,
                ),
              ),
              CustomElevatedButton(
                onTap: (){
                  onTapNext(context);
                },
                text: "Skip",
                margin: getMargin(
                  top: 97,
                ),
                buttonStyle: CustomButtonStyles.fillRedA700TL18.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    80,
                  ),
                  getVerticalSize(
                    37,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashThreeScreen);
  }
}
