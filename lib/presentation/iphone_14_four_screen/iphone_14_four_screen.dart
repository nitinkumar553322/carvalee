import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14FourScreen extends StatelessWidget {
  const Iphone14FourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: () {
                      onTapArrowleft40(context);
                    }),
                title: AppbarSubtitle3(
                    text: "FInd New Cars", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 13, top: 28, right: 13, bottom: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("What’s Your budget?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMedium18),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent2,
                          height: getVerticalSize(24),
                          width: getHorizontalSize(318),
                          margin: getMargin(top: 46)),
                      Padding(
                          padding: getPadding(top: 12, right: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Upto 2 Lakh",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2)),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("1+ Cr.",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2))
                              ])),
                      Padding(
                          padding:
                              getPadding(left: 3, top: 30, right: 3, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: getVerticalSize(48),
                                    width: getHorizontalSize(171),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: getHorizontalSize(138),
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 14,
                                                      right: 16,
                                                      bottom: 15),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("7.2",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmall12_2),
                                                        Text("Lakh",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmall12_2)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getVerticalSize(48),
                                                  width: getHorizontalSize(171),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4)),
                                                      border: Border.all(
                                                          color: appTheme
                                                              .blueGray100,
                                                          width:
                                                              getHorizontalSize(
                                                                  1)))))
                                        ])),
                                Container(
                                    padding: getPadding(
                                        left: 16,
                                        top: 14,
                                        right: 16,
                                        bottom: 14),
                                    decoration: AppDecoration.outline12
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("10.6",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmall12_2),
                                          Padding(
                                              padding: getPadding(left: 89),
                                              child: Text("Lakh",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 18, right: 16, bottom: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(
                          text: "PREVIOUS",
                          buttonStyle: CustomButtonStyles.outlineRedA700TL4
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(164),
                                          getVerticalSize(45)))),
                          buttonTextStyle: CustomTextStyles.titleSmallRedA700_1,
                          onTap: () {
                            onTapPrevious(context);
                          }),
                      CustomElevatedButton(
                          text: "NEXT",
                          buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                  getHorizontalSize(171),
                                  getVerticalSize(45)))),
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                          onTap: () {
                            onTapNext(context);
                          })
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft40(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sellCarsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarsScreen.
  onTapPrevious(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarsScreen);
  }

  /// Navigates to the sellCarstwoOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoOneScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14FiveScreen);
  }
}
