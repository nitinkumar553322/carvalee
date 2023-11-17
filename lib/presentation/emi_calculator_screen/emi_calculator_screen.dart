import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EmiCalculatorScreen extends StatelessWidget {
  EmiCalculatorScreen({Key? key}) : super(key: key);

  TextEditingController selectcarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: () {
                      onTapArrowleft39(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Choose your EMI Options",
                    margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 12, right: 15, bottom: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(351),
                          margin: getMargin(left: 2, right: 6),
                          child: Text(
                              "Car loan EMI calculator- Calculate Car \nEMI in minutes",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium18)),
                      CustomTextFormField(
                          controller: selectcarController,
                          margin: getMargin(left: 1, top: 14),
                          contentPadding:
                              getPadding(left: 16, top: 9, bottom: 9),
                          textStyle: CustomTextStyles.bodyMediumLight,
                          hintText: "Select Car",
                          hintStyle: CustomTextStyles.bodyMediumLight,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 12, right: 6, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgIctwotonecheck)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.outlineBluegray1002,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineBluegray1002,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.outlineBluegray1002,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineBluegray1002),
                      Container(
                          margin: getMargin(left: 1, top: 12),
                          padding:
                              getPadding(left: 6, top: 8, right: 6, bottom: 8),
                          decoration: AppDecoration.outline12,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(left: 10, top: 1),
                                    child: Text("Select City",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodyMediumLight)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgIctwotonecheck,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin: getMargin(top: 3, bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(left: 2, top: 35),
                          child: Text("Customize Car Loan EMI",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(left: 1, top: 9),
                          child: Text(
                              "Get attractive rates on car loans with instant approval",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmall12_2)),
                      Padding(
                          padding: getPadding(left: 1, top: 30),
                          child: Text("EMI",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmall12_2)),
                      Padding(
                          padding: getPadding(left: 1, top: 9, bottom: 5),
                          child: Row(children: [
                            Text("₹10,000",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.headlineLarge),
                            Padding(
                                padding:
                                    getPadding(left: 11, top: 21, bottom: 8),
                                child: Text("for 5 years",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2))
                          ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft39(BuildContext context) {
    Navigator.pop(context);
  }
}
