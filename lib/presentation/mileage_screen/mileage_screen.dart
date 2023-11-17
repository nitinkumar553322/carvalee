import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MileageScreen extends StatelessWidget {
  MileageScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10001,
            appBar: CustomAppBar(
                height: getVerticalSize(36),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleft14(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Sort & filter By", margin: getMargin(left: 16))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 12),
                    child: Padding(
                        padding: getPadding(left: 16, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomDropDown(
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 16),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  hintText: "Sort By",
                                  textStyle: theme.textTheme.titleSmall!,
                                  items: dropdownItemList,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                  contentPadding:
                                      getPadding(left: 15, top: 13, bottom: 13),
                                  onChanged: (value) {}),
                              CustomElevatedButton(
                                  text: "Budget",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapBudget(context);
                                  }),
                              CustomElevatedButton(
                                  text: "Make",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapMake(context);
                                  }),
                              CustomElevatedButton(
                                  text: "Fuel Type",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapFueltype(context);
                                  }),
                              CustomElevatedButton(
                                  text: "Transmission Type",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapTransmission(context);
                                  }),
                              CustomElevatedButton(
                                  text: "Body Type",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapBodytype(context);
                                  }),
                              CustomElevatedButton(
                                  text: "Seating Capacity",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapSeating(context);
                                  }),
                              CustomElevatedButton(
                                  text: "Airbags",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapAirbags(context);
                                  }),
                              Container(
                                  margin: getMargin(top: 12),
                                  padding: getPadding(
                                      left: 13, top: 12, right: 13, bottom: 12),
                                  decoration: AppDecoration.fill1.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomDropDown(
                                            icon: Container(
                                                margin: getMargin(left: 30),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownBlack900)),
                                            hintText: "Mileage",
                                            textStyle:
                                                theme.textTheme.titleSmall!,
                                            items: dropdownItemList1,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding:
                                                getPadding(left: 27, top: 6),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSystemuiconscheckboxempty,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 2),
                                                      child: Text("Upto 10kmpl",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray80012)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSystemuiconscheckboxempty,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 2),
                                                      child: Text(
                                                          "10kmpl-15kmpl",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray80012))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 27, top: 7, bottom: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSystemuiconscheckboxempty,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 2),
                                                      child: Text(
                                                          "15kmpl-20kmpl",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray80012)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSystemuiconscheckboxempty,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 2),
                                                      child: Text(
                                                          "Above 20kmpl",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray80012))
                                                ]))
                                      ])),
                              CustomElevatedButton(
                                  text: "Safety Ratings",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapSafetyratings(context);
                                  }),
                              Container(
                                  height: getVerticalSize(108),
                                  width: getHorizontalSize(358),
                                  margin: getMargin(top: 12),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomElevatedButton(
                                            text: "Engine Capacity",
                                            rightIcon: Container(
                                                margin: getMargin(left: 30),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownBlack900)),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL4
                                                .copyWith(
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all<Size>(Size(
                                                                getHorizontalSize(
                                                                    358),
                                                                getVerticalSize(
                                                                    48)))),
                                            buttonTextStyle:
                                                theme.textTheme.titleSmall!,
                                            alignment: Alignment.topCenter),
                                        CustomElevatedButton(
                                            text: "Power",
                                            rightIcon: Container(
                                                margin: getMargin(left: 30),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownBlack900)),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL4
                                                .copyWith(
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all<Size>(Size(
                                                                getHorizontalSize(
                                                                    358),
                                                                getVerticalSize(
                                                                    48)))),
                                            buttonTextStyle:
                                                theme.textTheme.titleSmall!,
                                            alignment: Alignment.bottomCenter),
                                        // CustomElevatedButton(
                                        //     text: "Apply",
                                        //     buttonStyle: CustomButtonStyles
                                        //         .fillRedA700
                                        //         .copyWith(
                                        //             fixedSize:
                                        //                 MaterialStateProperty
                                        //                     .all<Size>(Size(
                                        //                         getHorizontalSize(
                                        //                             319),
                                        //                         getVerticalSize(
                                        //                             45)))),
                                        //     buttonTextStyle: CustomTextStyles
                                        //         .titleSmallPrimary_1,
                                        //     onTap: () {
                                        //       onTapApply(context);
                                        //     },
                                        //     alignment: Alignment.center)
                                      ])),
                              CustomElevatedButton(
                                  text: "Torque",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapTorque(context);
                                  }),
                              CustomElevatedButton(
                                  text: "Colours",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapColours(context);
                                  }),
                              CustomElevatedButton(
                                  text: "Additional Features",
                                  margin: getMargin(top: 12),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(48)))),
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onTap: () {
                                    onTapAdditional(context);
                                  })
                            ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft14(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the budgetScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the budgetScreen.
  onTapBudget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.budgetScreen);
  }

  /// Navigates to the makeBrandScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the makeBrandScreen.
  onTapMake(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.makeBrandScreen);
  }

  /// Navigates to the fuelTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the fuelTypeScreen.
  onTapFueltype(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fuelTypeScreen);
  }

  /// Navigates to the transmissionTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the transmissionTypeScreen.
  onTapTransmission(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transmissionTypeScreen);
  }

  /// Navigates to the bodyTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the bodyTypeScreen.
  onTapBodytype(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bodyTypeScreen);
  }

  /// Navigates to the seatingCapacityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the seatingCapacityScreen.
  onTapSeating(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seatingCapacityScreen);
  }

  /// Navigates to the airbagsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the airbagsScreen.
  onTapAirbags(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.airbagsScreen);
  }

  /// Navigates to the safeyRatingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the safeyRatingsScreen.
  onTapSafetyratings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.safeyRatingsScreen);
  }

  /// Navigates to the newCarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the newCarScreen.
  onTapApply(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  /// Navigates to the torqueScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the torqueScreen.
  onTapTorque(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.torqueScreen);
  }

  /// Navigates to the coloursScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the coloursScreen.
  onTapColours(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coloursScreen);
  }

  /// Navigates to the additionalFeaturesScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the additionalFeaturesScreen.
  onTapAdditional(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.additionalFeaturesScreen);
  }
}
