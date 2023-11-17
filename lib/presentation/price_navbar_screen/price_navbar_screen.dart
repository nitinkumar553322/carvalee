import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

import 'loading_screen.dart';

// ignore_for_file: must_be_immutable
class PriceNavbarScreen extends StatelessWidget {
  PriceNavbarScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

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
                onTapLogin(context);
              }),
          title: AppbarSubtitle3(
              text: "On Road Price", margin: getMargin(left: 16))),
      body: SizedBox(
        width: mediaQueryData.size.width,
        child: SingleChildScrollView(
          padding: getPadding(top: 20),
          child: Padding(
            padding: getPadding(bottom: 5),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                  height: getVerticalSize(244),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle73,
                        height: getVerticalSize(244),
                        width: getHorizontalSize(390),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: getMargin(left: 17, right: 16),
                            padding: getPadding(
                                left: 16, top: 18, right: 16, bottom: 18),
                            decoration: AppDecoration.outline3.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomDropDown(
                                      icon: Container(
                                          margin:
                                              getMargin(left: 30, right: 15),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorGray800)),
                                      hintText:
                                          "Type to select car name, eg. Audi A4",
                                      margin: getMargin(top: 16),
                                      textStyle:
                                          CustomTextStyles.bodyMediumBlack900,
                                      items: dropdownItemList,
                                      contentPadding: getPadding(
                                          left: 16, top: 12, bottom: 12),
                                      defaultBorderDecoration:
                                          DropDownStyleHelper
                                              .outlineBluegray100,
                                      enabledBorderDecoration:
                                          DropDownStyleHelper
                                              .outlineBluegray100,
                                      focusedBorderDecoration:
                                          DropDownStyleHelper
                                              .outlineBluegray100,
                                      disabledBorderDecoration:
                                          DropDownStyleHelper
                                              .outlineBluegray100,
                                      onChanged: (value) {}),
                                  CustomElevatedButton(
                                      text: "Check Now",
                                      margin: getMargin(top: 21),
                                      buttonStyle: CustomButtonStyles
                                          .fillRedA700
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                                      double.maxFinite,
                                                      getVerticalSize(45)))),
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallPrimary_1,
                                      onTap: () {
                                        onTapChecknow(context);
                                      })
                                ])))
                  ])),
              Container(
                margin: getMargin(top: 32),
                padding: getPadding(left: 12, top: 34, right: 12, bottom: 34),
                decoration: AppDecoration.fill1,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 3),
                          child: Text("EMI Calculator",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: getPadding(top: 42, right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 7, bottom: 6),
                                    child: Text("Loan Amount",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium)),
                                CustomOutlinedButton(
                                    text: "₹ 20,000",
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray100TL4
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(114),
                                                        getVerticalSize(38)))),
                                    buttonTextStyle:
                                        theme.textTheme.titleSmall!)
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent2,
                          height: getVerticalSize(24),
                          width: getHorizontalSize(361),
                          margin: getMargin(left: 1, top: 18)),
                      Padding(
                          padding: getPadding(left: 1, top: 14, right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("₹ 0",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2),
                                Text("₹ 5 Lakhs",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2)
                              ])),
                      Padding(
                          padding: getPadding(left: 3, top: 25, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 7, bottom: 6),
                                    child: Text("Rate of Interest (p.a)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium)),
                                CustomOutlinedButton(
                                    text: "60 %",
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray100TL4
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(114),
                                                        getVerticalSize(38)))),
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMediumGray800)
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent2,
                          height: getVerticalSize(24),
                          width: getHorizontalSize(361),
                          margin: getMargin(left: 4, top: 18)),
                      Padding(
                          padding: getPadding(left: 4, top: 14, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("0 %",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2),
                                Text("100 %",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2)
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 25, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 7, bottom: 6),
                                    child: Text("Loan Tenure",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium)),
                                CustomOutlinedButton(
                                    text: "5 Years",
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray100TL4
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(114),
                                                        getVerticalSize(38)))),
                                    buttonTextStyle:
                                        theme.textTheme.titleSmall!)
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent2,
                          height: getVerticalSize(24),
                          width: getHorizontalSize(361),
                          margin: getMargin(left: 5, top: 18)),
                      Padding(
                          padding: getPadding(left: 5, top: 14, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("0 Year",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2),
                                Text("10 Year",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2)
                              ])),
                      CustomElevatedButton(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoadingScreen()));
                          },
                          text: "Calculate Now",
                          margin: getMargin(
                              left: 2, top: 43, right: 10, bottom: 43),
                          buttonStyle:
                              CustomButtonStyles.fillGreenA700.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(
                              Size(
                                double.maxFinite,
                                getVerticalSize(45),
                              ),
                            ),
                          ),
                          buttonTextStyle: CustomTextStyles.titleMediumPrimary)
                    ]),
              ),
            ]),
          ),
        ),
      ),
    ));
  }

  onTapArrowleft22(BuildContext context) {
    Navigator.pop(context);
  }

  onTapChecknow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  onTapCalculate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calculateScreen);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.btmBar);
  }
}
