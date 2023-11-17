import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashThreeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

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
                imagePath: ImageConstant.imgPricetag51684364323754,
                height: getSize(
                  220,
                ),
                width: getSize(
                  220,
                ),
              ),
              Container(
                height: getVerticalSize(
                  9,
                ),
                margin: getMargin(
                  top: 86,
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
                  top: 47,
                ),
                child: Text(
                  "Get the best price on car",
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
                  top: 22,
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
                          onTapLogin(context);
                        },
                text: "Skip",
                margin: getMargin(
                  top: 97,
                  bottom: 5,
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
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
