import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LogInTwoScreen extends StatelessWidget {
  const LogInTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 22, right: 16, bottom: 22),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 45),
                            child: Text("OTP Verification",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge)),
                        Container(
                            margin: getMargin(top: 72),
                            padding: getPadding(all: 24),
                            decoration: AppDecoration.outline3.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Enter the OTP sent to",
                                                style: CustomTextStyles
                                                    .bodyMediumOutfitPrimaryContainer),
                                            TextSpan(
                                                text: " -",
                                                style: CustomTextStyles
                                                    .titleSmallOutfitBlack900),
                                            TextSpan(
                                                text: " +91-8976500001",
                                                style: CustomTextStyles
                                                    .titleSmallOutfitBlueA700)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 31, right: 17),
                                      child: PinCodeTextField(
                                          appContext: context,
                                          length: 4,
                                          obscureText: false,
                                          obscuringCharacter: '*',
                                          keyboardType: TextInputType.number,
                                          autoDismissKeyboard: true,
                                          enableActiveFill: true,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.digitsOnly
                                          ],
                                          onChanged: (value) {},
                                          textStyle: TextStyle(
                                              color: appTheme.black900,
                                              fontSize: getFontSize(18),
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.w500),
                                          pinTheme: PinTheme(
                                              fieldHeight: getHorizontalSize(58),
                                              fieldWidth: getHorizontalSize(58),
                                              shape: PinCodeFieldShape.box,
                                              borderRadius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              selectedFillColor:
                                                  theme.colorScheme.onError,
                                              activeFillColor:
                                                  theme.colorScheme.onError,
                                              inactiveFillColor:
                                                  theme.colorScheme.onError,
                                              inactiveColor: Color(0X1212121D),
                                              selectedColor: Color(0X1212121D),
                                              activeColor: Color(0X1212121D)))),
                                  Padding(
                                      padding: getPadding(top: 38),
                                      child: Text("00:120 Sec",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallOutfitGray80002)),
                                  Padding(
                                      padding: getPadding(top: 24),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Don’t receive code ? ",
                                                style: CustomTextStyles
                                                    .bodyMediumOutfitGray700_1),
                                            TextSpan(
                                                text: "Re-send",
                                                style: CustomTextStyles
                                                    .titleSmallOutfitBlueA700)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  CustomElevatedButton(
                                      text: "Log In",
                                      margin: getMargin(
                                          left: 3, top: 39, right: 3, bottom: 11),
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
                                      })
                                ])),
                        Opacity(
                            opacity: 0.3,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIstockphoto929,
                                height: getVerticalSize(129),
                                width: getHorizontalSize(280),
                                alignment: Alignment.center,
                                margin: getMargin(top: 86)))
                      ]),
                )),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 79, bottom: 19),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Opacity(
                      opacity: 0.9,
                      child: Padding(
                          padding: getPadding(bottom: 1),
                          child: Text("Don’t have an account?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallPrimary_2))),
                  Padding(
                      padding: getPadding(left: 8, top: 1),
                      child: Text("Sign Up",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallPrimaryExtraBold))
                ]))));
  }

  /// Navigates to the homapageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homapageScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.btmBar);
  }
}
