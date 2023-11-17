import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_checkbox_button.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController nameoneController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  bool isCheckbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 16, top: 22, right: 16, bottom: 22),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(top: 48, bottom: 10),
                        child: Text("Log In to Appname",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleLarge)),
                    Container(
                      margin: getMargin(top: 5),
                      padding:
                          getPadding(left: 24, top: 23, right: 24, bottom: 23),
                      decoration: AppDecoration.outline3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Name",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleSmall),
                            CustomTextFormField(
                                controller: nameoneController,
                                margin: getMargin(top: 8),
                                contentPadding: getPadding(
                                    left: 12, top: 6, right: 12, bottom: 6),
                                textStyle: CustomTextStyles.bodyMediumBlack900,
                                hintText: "Enter your Name ",
                                hintStyle: CustomTextStyles.bodyMediumBlack900,
                                textInputAction: TextInputAction.next,
                                defaultBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                enabledBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                focusedBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                disabledBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41),
                            Padding(
                                padding: getPadding(top: 15),
                                child: Text("Email",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall)),
                            CustomTextFormField(
                                controller: emailoneController,
                                margin: getMargin(top: 8),
                                contentPadding: getPadding(
                                    left: 12, top: 6, right: 12, bottom: 6),
                                textStyle: CustomTextStyles.bodyMediumBlack900,
                                hintText: "Enter your Email ID ",
                                hintStyle: CustomTextStyles.bodyMediumBlack900,
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.emailAddress,
                                defaultBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                enabledBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                focusedBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                disabledBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41),
                            Padding(
                                padding: getPadding(top: 15),
                                child: Text("Mobile Number",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall)),
                            CustomTextFormField(
                                controller: mobilenumberController,
                                margin: getMargin(top: 8),
                                contentPadding: getPadding(
                                    left: 12, top: 6, right: 12, bottom: 6),
                                textStyle: CustomTextStyles.bodyMediumBlack900,
                                hintText: "Enter your Mobile Number ",
                                hintStyle: CustomTextStyles.bodyMediumBlack900,
                                textInputType: TextInputType.phone,
                                defaultBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                enabledBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                focusedBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41,
                                disabledBorderDecoration:
                                    TextFormFieldStyleHelper
                                        .outlineBluegray100TL41),
                            CustomCheckboxButton(
                                text: "Keep me signed in",
                                value: isCheckbox,
                                margin: getMargin(top: 42),
                                textStyle: theme.textTheme.titleSmall!,
                                onChange: (value) {
                                  isCheckbox = value;
                                }),
                            CustomElevatedButton(
                                text: "Log In",
                                margin: getMargin(left: 3, top: 21, right: 3),
                                buttonStyle: CustomButtonStyles.fillRedA700
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(double.maxFinite,
                                                    getVerticalSize(45)))),
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallPrimary_1,
                                onTap: () {
                                  onTapLogin(context);
                                }),
                            Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  onTapTxtDonthaveanaccount(context);
                                },
                                child: Padding(
                                  padding: getPadding(top: 23, bottom: 30),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t have an account?",
                                            style: theme.textTheme.titleSmall),
                                        TextSpan(
                                            text: " ",
                                            style: CustomTextStyles
                                                .titleSmallBlueA700_2),
                                        TextSpan(
                                            text: "Sign UP",
                                            style: CustomTextStyles
                                                .titleSmallBlueA700Bold)
                                      ]),
                                      textAlign: TextAlign.left),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Opacity(
                      opacity: 0.9,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIstockphoto929,
                        height: getVerticalSize(129),
                        width: getHorizontalSize(280),
                        alignment: Alignment.center,
                        margin: getMargin(top: 23),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        // bottomNavigationBar: Padding(
        //   padding: getPadding(left: 79, bottom: 19),
        //   child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        //     Opacity(
        //       opacity: 0.9,
        //       child: Padding(
        //         padding: getPadding(bottom: 1),
        //         child: Text("Don’t have an account?",
        //             overflow: TextOverflow.ellipsis,
        //             textAlign: TextAlign.left,
        //             style: CustomTextStyles.titleSmallPrimary_2),
        //       ),
        //     ),
        //     Padding(
        //       padding: getPadding(left: 8, top: 1),
        //       child: Text("gn Up",
        //           overflow: TextOverflow.ellipsis,
        //           textAlign: TextAlign.left,
        //           style: CustomTextStyles.titleSmallPrimaryExtraBold),
        //     )
        //   ]),
        // ),
      ),
    );
  }

  /// Navigates to the logInTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the logInTwoScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInTwoScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signUpScreen.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
