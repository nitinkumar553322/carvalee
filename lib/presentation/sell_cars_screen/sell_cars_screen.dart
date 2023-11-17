import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SellCarsScreen extends StatelessWidget {
  SellCarsScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

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
                      onTapArrowleft37(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Sell Cars", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 6, right: 16, bottom: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnotherStepper(
                          iconHeight: 40,
                          iconWidth: 40,
                          stepperDirection: Axis.horizontal,
                          activeIndex: 0,
                          barThickness: 4,
                          activeBarColor: appTheme.blueGray100,
                          inActiveBarColor: appTheme.blueGray100,
                          inverted: true,
                          stepperList: [
                            StepperData(
                                iconWidget: Container(
                                    width: getSize(40),
                                    padding: getPadding(
                                        left: 15,
                                        top: 10,
                                        right: 15,
                                        bottom: 10),
                                    decoration: AppDecoration.txtFill2.copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder20),
                                    child: Text("A",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)),
                                // title: SizedBox(
                                //     child: Text("Car\nDetails",
                                //         maxLines: 1,
                                //         overflow: TextOverflow.ellipsis,
                                //         textAlign: TextAlign.center,
                                //         style: CustomTextStyles
                                //             .labelLargeBlack900_1))
                            ),
                            StepperData(
                                iconWidget: Container(
                                    width: getSize(40),
                                    padding: getPadding(
                                        left: 14,
                                        top: 10,
                                        right: 14,
                                        bottom: 10),
                                    decoration: AppDecoration.txtFill.copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder20),
                                    child: Text("B",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)),
                                // title: SizedBox(
                                //     child: Text("Contact\nDetails",
                                //         maxLines: 1,
                                //         overflow: TextOverflow.ellipsis,
                                //         textAlign: TextAlign.center,
                                //         style: CustomTextStyles
                                //             .labelLargeBlack900_1))
                            ),
                            StepperData(
                                iconWidget: Container(
                                    width: getSize(40),
                                    padding: getPadding(
                                        left: 14,
                                        top: 10,
                                        right: 14,
                                        bottom: 10),
                                    decoration: AppDecoration.txtFill.copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder20),
                                    child: Text("C",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)),
                                title: StepperText("Car Images",
                                    textStyle:
                                        CustomTextStyles.labelLargeBlack900_1))
                          ]),
                      Padding(
                          padding: getPadding(top: 35),
                          child: Text("Car manufacturing year",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium18)),
                      Padding(
                          padding: getPadding(top: 27, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomDropDown(
                                        icon: Container(
                                            margin: getMargin(left: 30),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBlack900)),
                                        hintText: "Year",
                                        margin: getMargin(right: 8),
                                        textStyle:
                                            CustomTextStyles.bodyMediumBlack900,
                                        items: dropdownItemList,
                                        contentPadding:
                                            getPadding(top: 2, bottom: 2),
                                        defaultBorderDecoration:
                                            DropDownStyleHelper
                                                .underLineBluegray100,
                                        enabledBorderDecoration:
                                            DropDownStyleHelper
                                                .underLineBluegray100,
                                        focusedBorderDecoration:
                                            DropDownStyleHelper
                                                .underLineBluegray100,
                                        disabledBorderDecoration:
                                            DropDownStyleHelper
                                                .underLineBluegray100,
                                        onChanged: (value) {})),
                                Expanded(
                                    child: CustomDropDown(
                                        icon: Container(
                                            margin: getMargin(left: 30),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBlack900)),
                                        hintText: "Month",
                                        margin: getMargin(left: 8),
                                        textStyle:
                                            CustomTextStyles.bodyMediumBlack900,
                                        items: dropdownItemList1,
                                        contentPadding:
                                            getPadding(top: 2, bottom: 2),
                                        defaultBorderDecoration:
                                            DropDownStyleHelper
                                                .underLineBluegray100,
                                        enabledBorderDecoration:
                                            DropDownStyleHelper
                                                .underLineBluegray100,
                                        focusedBorderDecoration:
                                            DropDownStyleHelper
                                                .underLineBluegray100,
                                        disabledBorderDecoration:
                                            DropDownStyleHelper
                                                .underLineBluegray100,
                                        onChanged: (value) {}))
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
  onTapArrowleft37(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sellCarsOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarsOneScreen.
  onTapPrevious(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarsOneScreen);
  }

  /// Navigates to the sellCarstwoFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoFiveScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoFiveScreen);
  }
}
