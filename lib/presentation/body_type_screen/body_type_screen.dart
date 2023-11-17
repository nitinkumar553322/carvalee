import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BodyTypeScreen extends StatelessWidget {
  BodyTypeScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Price Low to high", "Price high to low", ""];

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
                  onTapArrowleft6(context);
                }),
            title: AppbarSubtitle3(
                text: "Sort & filter By", margin: getMargin(left: 16))),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 12),
            child: Padding(
              padding: getPadding(left: 16, right: 16, bottom: 5),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                CustomDropDown(
                    icon: Container(
                        margin: getMargin(left: 30, right: 16),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    hintText: "Sort By",
                    textStyle: theme.textTheme.titleSmall!,
                    items: dropdownItemList,
                    filled: true,
                    fillColor: theme.colorScheme.primary,
                    contentPadding: getPadding(left: 15, top: 13, bottom: 13),
                    onChanged: (value) {}),

                CustomElevatedButton(
                    text: "Budget",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 255),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapBudget(context);
                    }),
                CustomElevatedButton(
                    text: "Make",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 265),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapMake(context);
                    }),
                CustomElevatedButton(
                    text: "Fuel Type",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 240),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapFueltype(context);
                    }),
                CustomElevatedButton(
                    text: "Transmission Type",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 180),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapTransmission(context);
                    }),
                Container(
                    margin: getMargin(top: 12),
                    padding:
                        getPadding(left: 13, top: 15, right: 13, bottom: 15),
                    decoration: AppDecoration.fill1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomDropDown(
                              icon: Container(
                                  margin: getMargin(left: 30),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowdownBlack900)),
                              hintText: "Body Type",
                              textStyle: theme.textTheme.titleSmall!,
                              items: dropdownItemList1,
                              contentPadding: getPadding(top: 1, bottom: 1),
                              onChanged: (value) {}),
                          Container(
                              margin: getMargin(left: 1, top: 22, right: 1),
                              padding: getPadding(
                                  left: 13, top: 19, right: 13, bottom: 19),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarGreenA700,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(47),
                                    margin: getMargin(top: 2)),
                                Padding(
                                    padding: getPadding(left: 24, bottom: 1),
                                    child: Text("Micro",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 13, top: 20, right: 13, bottom: 20),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarGreenA70022x47,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(47),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 24),
                                    child: Text("Sedan",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 7, top: 19, right: 7, bottom: 19),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarGreenA70022x59,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(59),
                                    margin: getMargin(top: 1, bottom: 2)),
                                Padding(
                                    padding: getPadding(left: 18, top: 1),
                                    child: Text("CUV",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 10, top: 19, right: 10, bottom: 19),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarGreenA70022x56,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(56),
                                    margin: getMargin(top: 2, bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 18, top: 1),
                                    child: Text("SUV",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 14, top: 19, right: 14, bottom: 19),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarGreenA70020x48,
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(48),
                                    margin: getMargin(top: 3, bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 23, top: 1),
                                    child: Text("Hatchback",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 5, top: 19, right: 5, bottom: 19),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarGreenA70022x66,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(66),
                                    margin: getMargin(top: 2, bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 13, top: 1),
                                    child: Text("Roadster",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 10, top: 18, right: 10, bottom: 18),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCar22x59,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(59),
                                    margin: getMargin(top: 3, bottom: 2)),
                                Padding(
                                    padding: getPadding(left: 15, top: 4),
                                    child: Text("Pickup",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 10, top: 19, right: 10, bottom: 19),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarGreenA70022x62,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(62),
                                    margin: getMargin(top: 2, bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 12, top: 2),
                                    child: Text("Van",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 9, top: 17, right: 9, bottom: 17),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCar22x66,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(66),
                                    margin: getMargin(top: 4, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 9, top: 5),
                                    child: Text("Coupe",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 4, top: 17, right: 4, bottom: 17),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarGreenA70020x76,
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(76),
                                    margin: getMargin(top: 5, bottom: 4)),
                                Padding(
                                    padding: getPadding(left: 4, top: 5),
                                    child: Text("Supercar",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 20, top: 17, right: 20, bottom: 17),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(44),
                                    margin: getMargin(top: 4, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 20, top: 5),
                                    child: Text("Campervan",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 25, top: 10, right: 25, bottom: 10),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCarGreenA70022x46,
                                        height: getVerticalSize(22),
                                        width: getHorizontalSize(46),
                                        margin: getMargin(top: 10, bottom: 13)),
                                    Padding(
                                        padding: getPadding(
                                            left: 13, top: 9, bottom: 11),
                                        child: Text("Mini Truck",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.titleMedium)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgNouncampervan2091473,
                                        height: getSize(1),
                                        width: getSize(1),
                                        margin:
                                            getMargin(right: 15, bottom: 44))
                                  ])),
                          Container(
                              margin: getMargin(left: 1, top: 8, right: 1),
                              padding: getPadding(
                                  left: 19, top: 20, right: 19, bottom: 20),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCar22x56,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(56),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(left: 9),
                                    child: Text("Cabriolet",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                          Container(
                              margin: getMargin(
                                  left: 1, top: 8, right: 1, bottom: 2),
                              padding: getPadding(
                                  left: 21, top: 20, right: 21, bottom: 20),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroupGreenA700,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(46),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(left: 17),
                                    child: Text("Minivan",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ]))
                        ])),
                CustomElevatedButton(
                    text: "Seating Capacity",
                    margin: getMargin(top: 32),
                    rightIcon: Container(
                        margin: getMargin(left: 185),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapSeating(context);
                    }),
                CustomElevatedButton(
                    text: "Airbags",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 250),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapAirbags(context);
                    }),
                CustomElevatedButton(
                    text: "Mileage",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 245),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapMileage(context);
                    }),
                CustomElevatedButton(
                    text: "Safety Ratings",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 205),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapSafetyratings(context);
                    }),
                CustomElevatedButton(
                    text: "Engine Capacity",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 195),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapEnginecapacity(context);
                    }),
                CustomElevatedButton(
                    text: "Power",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 255),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapPower(context);
                    }),
                CustomElevatedButton(
                    text: "Torque",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 255),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapTorque(context);
                    }),
                CustomElevatedButton(
                    text: "Colours",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 250),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(48)))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapColours(context);
                    }),
                CustomElevatedButton(
                    text: "Additional Features",
                    margin: getMargin(top: 12),
                    rightIcon: Container(
                        margin: getMargin(left: 180),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(
                          double.maxFinite,
                          getVerticalSize(48),
                        ),
                      ),
                    ),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                    onTap: () {
                      onTapAdditional(context);
                    })
              ]),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft6(BuildContext context) {
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

  /// Navigates to the mileageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the mileageScreen.
  onTapMileage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mileageScreen);
  }

  /// Navigates to the safeyRatingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the safeyRatingsScreen.
  onTapSafetyratings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.safeyRatingsScreen);
  }

  /// Navigates to the engineCapacityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the engineCapacityScreen.
  onTapEnginecapacity(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.engineCapacityScreen);
  }

  /// Navigates to the powerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the powerScreen.
  onTapPower(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.powerScreen);
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
