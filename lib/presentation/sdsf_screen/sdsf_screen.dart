import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class SdsfScreen extends StatelessWidget {
  SdsfScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController pricesevenController = TextEditingController();

  TextEditingController priceeightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: getVerticalSize(
                2018,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 7,
                            top: 9,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: getHorizontalSize(
                                        207,
                                      ),
                                      child: Divider(
                                        height: getVerticalSize(
                                          6,
                                        ),
                                        thickness: getVerticalSize(
                                          6,
                                        ),
                                        color: appTheme.blueGray100,
                                        endIndent: getHorizontalSize(
                                          40,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 54,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle19,
                                            height: getVerticalSize(
                                              86,
                                            ),
                                            width: getHorizontalSize(
                                              142,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 20,
                                              top: 6,
                                              bottom: 32,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "On road price (GST)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 7,
                                                  ),
                                                  child: Text(
                                                    "Alto K10",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleSmallBlack900_1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage70,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  left: 63,
                                  top: 11,
                                  bottom: 115,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 96,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Ex-Showroom Price",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall12_2,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage58,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  left: 13,
                                  bottom: 1,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "₹6.96 Lakh ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900_1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 12,
                            right: 17,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Registration",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall12_2,
                                ),
                              ),
                              Text(
                                "₹52,089",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900_1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            22,
                          ),
                          width: getHorizontalSize(
                            355,
                          ),
                          margin: getMargin(
                            top: 13,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage58,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                alignment: Alignment.topLeft,
                                margin: getMargin(
                                  left: 72,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "Insurance",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2,
                                      ),
                                    ),
                                    Text(
                                      "₹52,089",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 15,
                            right: 17,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Other Charges",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall12_2,
                                ),
                              ),
                              Text(
                                "₹2,089",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900_1,
                              ),
                            ],
                          ),
                        ),
                        CustomOutlinedButton(
                          text: "Show more price breakup >",
                          margin: getMargin(
                            left: 17,
                            top: 38,
                            right: 20,
                          ),
                          buttonStyle: CustomButtonStyles.outlineBlueA700
                              .copyWith(
                                  fixedSize:
                                      MaterialStateProperty.all<Size>(Size(
                            double.maxFinite,
                            getVerticalSize(
                              45,
                            ),
                          ))),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallBlueA700_1,
                        ),
                        Container(
                          height: getVerticalSize(
                            22,
                          ),
                          width: getHorizontalSize(
                            355,
                          ),
                          margin: getMargin(
                            top: 26,
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "On Road Price in Noida",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2,
                                      ),
                                    ),
                                    Text(
                                      "₹2,089",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage58,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                alignment: Alignment.topLeft,
                                margin: getMargin(
                                  left: 147,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomElevatedButton(
                          text: "Get Price Details on Whatsapp",
                          margin: getMargin(
                            left: 15,
                            top: 14,
                            right: 21,
                          ),
                          leftIcon: Container(
                            margin: getMargin(
                              right: 8,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLogoswhatsappicon,
                              height: getSize(
                                18,
                              ),
                              width: getSize(
                                18,
                              ),
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.outlineBlack900
                              .copyWith(
                                  fixedSize:
                                      MaterialStateProperty.all<Size>(Size(
                            double.maxFinite,
                            getVerticalSize(
                              36,
                            ),
                          ))),
                          buttonTextStyle: CustomTextStyles.bodySmall12_2,
                        ),
                        Container(
                          margin: getMargin(
                            left: 17,
                            top: 23,
                            right: 18,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 11,
                            right: 16,
                            bottom: 11,
                          ),
                          decoration: AppDecoration.fill2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  bottom: 3,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "EMI  ₹11,000/month",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 8,
                                      ),
                                      child: Text(
                                        "EMI Calculator",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodySmallBlueA700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage58,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  left: 8,
                                  bottom: 29,
                                ),
                              ),
                              CustomOutlinedButton(
                                text: "Get EMI Offers",
                                margin: getMargin(
                                  left: 41,
                                  top: 7,
                                  bottom: 11,
                                ),
                                buttonStyle: CustomButtonStyles.outlineGreenA700
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(
                                  getHorizontalSize(
                                    115,
                                  ),
                                  getVerticalSize(
                                    31,
                                  ),
                                ))),
                                buttonTextStyle:
                                    CustomTextStyles.bodySmallGreenA70012,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 17,
                            top: 34,
                            right: 18,
                          ),
                          padding: getPadding(
                            top: 17,
                            bottom: 17,
                          ),
                          decoration: AppDecoration.fill2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMaskgroup50x50,
                                height: getSize(
                                  50,
                                ),
                                width: getSize(
                                  50,
                                ),
                                margin: getMargin(
                                  bottom: 10,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  bottom: 11,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Need a Car Loan?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 10,
                                      ),
                                      child: Text(
                                        "Apply to get Instant Pre-qualified Offers",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodySmallBlueA700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            489,
                          ),
                          width: getHorizontalSize(
                            354,
                          ),
                          margin: getMargin(
                            top: 42,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  padding: getPadding(
                                    left: 19,
                                    top: 22,
                                    right: 19,
                                    bottom: 22,
                                  ),
                                  decoration: AppDecoration.outline5.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder7,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgMaskgroup1,
                                            height: getSize(
                                              40,
                                            ),
                                            width: getSize(
                                              40,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 17,
                                              top: 9,
                                              bottom: 9,
                                            ),
                                            child: Text(
                                              "Exclusive Offers",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleSmallBlack900_1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 19,
                                        ),
                                        child: Text(
                                          "Benefits of Authorised Buying Experience",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodyMediumGray800,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 18,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage64,
                                              height: getVerticalSize(
                                                18,
                                              ),
                                              width: getHorizontalSize(
                                                26,
                                              ),
                                              margin: getMargin(
                                                bottom: 2,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 16,
                                                top: 1,
                                              ),
                                              child: Text(
                                                "Doorstep Demo",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage65,
                                              height: getSize(
                                                20,
                                              ),
                                              width: getSize(
                                                20,
                                              ),
                                              margin: getMargin(
                                                left: 37,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "Offers & Discounts",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                          top: 18,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage66,
                                              height: getSize(
                                                20,
                                              ),
                                              width: getSize(
                                                20,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 19,
                                                top: 1,
                                              ),
                                              child: Text(
                                                "Lowest EMI",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage67,
                                              height: getSize(
                                                20,
                                              ),
                                              width: getSize(
                                                20,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                top: 1,
                                              ),
                                              child: Text(
                                                "Exchange Benefits",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomOutlinedButton(
                                        text: "Get the Best deals",
                                        margin: getMargin(
                                          top: 24,
                                          right: 2,
                                          bottom: 24,
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .outlineBlueA700
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                          double.maxFinite,
                                          getVerticalSize(
                                            45,
                                          ),
                                        ))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallBlueA700_1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: getPadding(
                                    left: 19,
                                    top: 12,
                                    right: 19,
                                    bottom: 12,
                                  ),
                                  decoration: AppDecoration.outline6,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                        ),
                                        child: Text(
                                          "To avail these offers, benefits please contact, ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallGray80012,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPngegg1,
                                              height: getVerticalSize(
                                                27,
                                              ),
                                              width: getHorizontalSize(
                                                29,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                                top: 5,
                                              ),
                                              child: Text(
                                                "Maruti Suzuki",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                          top: 19,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskgroup20x20,
                                              height: getSize(
                                                20,
                                              ),
                                              width: getSize(
                                                20,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 17,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "H-5, Sector 63, Noida",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallGray80012,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                          top: 15,
                                          bottom: 31,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaskgroup2,
                                              height: getSize(
                                                20,
                                              ),
                                              width: getSize(
                                                20,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 17,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Call Now",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBlueA700_1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 19,
                              top: 45,
                            ),
                            child: Text(
                              "Alto K10 Price in Cities Near Noida",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1,
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            101,
                          ),
                          width: getHorizontalSize(
                            354,
                          ),
                          margin: getMargin(
                            top: 393,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: getHorizontalSize(
                                    354,
                                  ),
                                  padding: getPadding(
                                    left: 18,
                                    top: 14,
                                    right: 18,
                                    bottom: 14,
                                  ),
                                  decoration: AppDecoration.txtOutline2,
                                  child: Text(
                                    "Alto K10 Waiting Period",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900_1,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        177,
                                      ),
                                      padding: getPadding(
                                        left: 17,
                                        top: 15,
                                        right: 17,
                                        bottom: 15,
                                      ),
                                      decoration: AppDecoration.txtOutline1,
                                      child: Text(
                                        "EX 1.2 MT",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodySmallGray80012,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        176,
                                      ),
                                      padding: getPadding(
                                        left: 16,
                                        top: 15,
                                        right: 16,
                                        bottom: 15,
                                      ),
                                      decoration: AppDecoration.txtOutline1,
                                      child: Text(
                                        "12-16 Weeks",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodySmallGray80012,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            353,
                          ),
                          margin: getMargin(
                            left: 19,
                            right: 18,
                          ),
                          padding: getPadding(
                            left: 17,
                            top: 15,
                            right: 17,
                            bottom: 15,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup37992Primary,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
                                ),
                                child: Text(
                                  "EX (0) 1.2 MT",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallGray80012,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  right: 79,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "7-9 Weeks",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallGray80012,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(
                            121,
                          ),
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 19,
                                    right: 18,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: getPadding(
                                              left: 17,
                                              top: 15,
                                              right: 17,
                                              bottom: 15,
                                            ),
                                            decoration: AppDecoration.outline7,
                                            child: Padding(
                                              padding: getPadding(
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "STD",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallGray80012,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: getPadding(
                                              left: 16,
                                              top: 15,
                                              right: 16,
                                              bottom: 15,
                                            ),
                                            decoration: AppDecoration.outline7,
                                            child: Padding(
                                              padding: getPadding(
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "10-12 Weeks",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallGray80012,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      CustomOutlinedButton(
                                        text: "View More ",
                                        margin: getMargin(
                                          top: 25,
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .outlineBlueA700
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                          double.maxFinite,
                                          getVerticalSize(
                                            45,
                                          ),
                                        ))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallBlueA700_1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: double.maxFinite,
                                  margin: getMargin(
                                    top: 8,
                                    bottom: 33,
                                  ),
                                  padding: getPadding(
                                    top: 17,
                                    bottom: 17,
                                  ),
                                  decoration: AppDecoration.fill,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CustomElevatedButton(
                                        text: "Get New Offers",
                                        margin: getMargin(
                                          bottom: 1,
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .fillRedA700
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                          getHorizontalSize(
                                            167,
                                          ),
                                          getVerticalSize(
                                            45,
                                          ),
                                        ))),
                                        buttonTextStyle:
                                            CustomTextStyles.bodyMediumPrimary,
                                      ),
                                      CustomOutlinedButton(
                                        text: "Contact Dealer",
                                        margin: getMargin(
                                          bottom: 1,
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .outlineGreenA700TL4
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                          getHorizontalSize(
                                            164,
                                          ),
                                          getVerticalSize(
                                            45,
                                          ),
                                        ))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallGreenA700_1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 50,
                          ),
                          child: Text(
                            "Alto K10 Fuel Cost",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 18,
                              top: 16,
                            ),
                            child: Text(
                              "VERSION*",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallGray800_1,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          controller: pricesevenController,
                          margin: getMargin(
                            left: 19,
                            top: 7,
                            right: 18,
                          ),
                          contentPadding: getPadding(
                            left: 17,
                            top: 8,
                            bottom: 8,
                          ),
                          textStyle: CustomTextStyles.titleSmallBlack900_1,
                          hintText: "STD",
                          hintStyle: CustomTextStyles.titleSmallBlack900_1,
                          textInputAction: TextInputAction.next,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 17,
                              right: 19,
                              bottom: 17,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrow5,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              38,
                            ),
                          ),
                          filled: true,
                          fillColor: theme.colorScheme.primary,
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.outlineGray8001,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineGray8001,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.outlineGray8001,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineGray8001,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 18,
                              top: 10,
                            ),
                            child: Text(
                              "FUEL PRICE PER LITRE",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallGray800_1,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          controller: priceeightController,
                          margin: getMargin(
                            left: 19,
                            top: 7,
                            right: 18,
                          ),
                          contentPadding: getPadding(
                            left: 17,
                            top: 8,
                            bottom: 8,
                          ),
                          textStyle: CustomTextStyles.titleSmallBlack900_1,
                          hintText: "STD",
                          hintStyle: CustomTextStyles.titleSmallBlack900_1,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 17,
                              right: 19,
                              bottom: 17,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrow5,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              38,
                            ),
                          ),
                          filled: true,
                          fillColor: theme.colorScheme.primary,
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.outlineGray8001,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineGray8001,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.outlineGray8001,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineGray8001,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 18,
                              top: 24,
                            ),
                            child: Text(
                              "KM DRIVEN PER MONTH",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallGray800_1,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgComponent2,
                          height: getVerticalSize(
                            24,
                          ),
                          width: getHorizontalSize(
                            353,
                          ),
                          margin: getMargin(
                            top: 17,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 3,
                            right: 18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0 KM",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "5000 KM",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 19,
                            top: 16,
                            right: 18,
                          ),
                          padding: getPadding(
                            left: 17,
                            top: 8,
                            right: 17,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.outline7,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Text(
                                  "4567",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 7,
                                  top: 1,
                                  right: 8,
                                ),
                                child: Text(
                                  "KM",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            109,
                          ),
                          width: getHorizontalSize(
                            369,
                          ),
                          margin: getMargin(
                            top: 34,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  padding: getPadding(
                                    left: 17,
                                    top: 15,
                                    right: 17,
                                    bottom: 15,
                                  ),
                                  decoration: AppDecoration.fill2.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder7,
                                  ),
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 58,
                                    ),
                                    child: Text(
                                      "Monthly Fuel Cost for Alto K10 is :",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodyMediumGray800,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: getVerticalSize(
                                    24,
                                  ),
                                  width: getHorizontalSize(
                                    353,
                                  ),
                                  margin: getMargin(
                                    bottom: 33,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "₹6,500",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage58,
                                        height: getSize(
                                          20,
                                        ),
                                        width: getSize(
                                          20,
                                        ),
                                        alignment: Alignment.centerLeft,
                                        margin: getMargin(
                                          left: 70,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage72,
                                height: getSize(
                                  49,
                                ),
                                width: getSize(
                                  49,
                                ),
                                alignment: Alignment.topRight,
                                margin: getMargin(
                                  top: 21,
                                  right: 41,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 176,
                        bottom: 1787,
                      ),
                      padding: getPadding(
                        left: 18,
                        top: 5,
                        right: 18,
                        bottom: 5,
                      ),
                      decoration: AppDecoration.outline3.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "On road price (GST)",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall12_2,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Std",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900_1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrow5,
                            height: getSize(
                              2,
                            ),
                            width: getSize(
                              2,
                            ),
                            margin: getMargin(
                              left: 28,
                              top: 21,
                              bottom: 20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 26,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                42,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: appTheme.black900,
                                indent: getHorizontalSize(
                                  3,
                                ),
                                endIndent: getHorizontalSize(
                                  4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 11,
                              top: 1,
                              bottom: 2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "City",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall12_2,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Noida",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrow5,
                                      height: getSize(
                                        2,
                                      ),
                                      width: getSize(
                                        2,
                                      ),
                                      margin: getMargin(
                                        top: 1,
                                        bottom: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        bottom: 301,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.maxFinite,
                            padding: getPadding(
                              left: 17,
                              top: 5,
                              right: 17,
                              bottom: 5,
                            ),
                            decoration: AppDecoration.fill,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "City",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBlack900SemiBold,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    right: 60,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "On-Road Price",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBlack900SemiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 17,
                              top: 18,
                              right: 23,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "New Delhi",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold,
                                ),
                                Text(
                                  "₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 11,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: appTheme.gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 17,
                              top: 13,
                              right: 23,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ghaziabad",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold,
                                ),
                                Text(
                                  "₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              1,
                            ),
                            width: getHorizontalSize(
                              388,
                            ),
                            margin: getMargin(
                              top: 17,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      388,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: appTheme.gray800,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      381,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: appTheme.gray800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 17,
                              top: 13,
                              right: 23,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Jaipur",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .titleSmallBlueA700SemiBold,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "₹6.96 Lakh onwards",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900_1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              1,
                            ),
                            width: getHorizontalSize(
                              388,
                            ),
                            margin: getMargin(
                              top: 16,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      388,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: appTheme.gray800,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      381,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: appTheme.gray800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 17,
                              top: 13,
                              right: 23,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Lucknow",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold,
                                ),
                                Text(
                                  "₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 17,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: appTheme.gray800,
                            ),
                          ),
                          CustomOutlinedButton(
                            text: "View More Cities",
                            margin: getMargin(
                              left: 19,
                              top: 20,
                              right: 18,
                            ),
                            buttonStyle: CustomButtonStyles.outlineBlueA700
                                .copyWith(
                                    fixedSize:
                                        MaterialStateProperty.all<Size>(Size(
                              double.maxFinite,
                              getVerticalSize(
                                45,
                              ),
                            ))),
                            buttonTextStyle:
                                CustomTextStyles.titleSmallBlueA700_1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
