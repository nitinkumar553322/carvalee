import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../used_car_page_screen/widgets/listrectangle33_item_widget.dart';

// ignore_for_file: must_be_immutable
class UsedCarPageScreen extends StatelessWidget {
  UsedCarPageScreen({Key? key}) : super(key: key);

  TextEditingController group493Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          height: getVerticalSize(41),
          leadingWidth: 41,
          leading: Container(
              height: getVerticalSize(24),
              width: getHorizontalSize(25),
              margin: getMargin(
                left: 16,
              ),
              child: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(right: 1),
                  onTap: () {
                    onTapArrowleft28(context);
                  })),
          title: Padding(
              padding: getPadding(left: 15),
              child: AppbarSubtitle3(
                  text: "Alto K10", margin: getMargin(right: 16))),
          actions: [
            AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgFavorite,
              // margin: getMargin(left: 19, top: 5, right: 12)
            ),
            AppbarImage(
                height: getSize(24),
                width: getSize(24),
                svgPath: ImageConstant.imgBasilshareoutline,
                margin: getMargin(left: 9, right: 21))
          ]),
      body: SizedBox(
        width: mediaQueryData.size.width,
        child: SingleChildScrollView(
          padding: getPadding(top: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: getVerticalSize(228),
              width: double.maxFinite,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: getVerticalSize(53),
                        width: double.maxFinite,
                        margin: getMargin(bottom: 43),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius:
                                BorderRadius.circular(getHorizontalSize(16))))),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: getVerticalSize(228),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle119113x179,
                          height: getVerticalSize(228),
                          width: getHorizontalSize(390),
                          alignment: Alignment.center),
                      CustomTextFormField(
                          width: getHorizontalSize(156),
                          controller: group493Controller,
                          margin: getMargin(bottom: 21),
                          contentPadding:
                              getPadding(left: 24, top: 12, bottom: 12),
                          textStyle: CustomTextStyles.labelLargePrimary,
                          hintText: "Tap to View",
                          hintStyle: CustomTextStyles.labelLargePrimary,
                          alignment: Alignment.bottomCenter,
                          suffix: Container(
                              margin: getMargin(
                                  left: 10, top: 7, right: 23, bottom: 8),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgMaskGroup13,
                                  height: getSize(28),
                                  width: getSize(28))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(43)),
                          filled: true,
                          fillColor: appTheme.black900.withOpacity(0.8),
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.fillBlack900,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.fillBlack900,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.fillBlack900,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.fillBlack900),
                    ]),
                  ),
                ),
              ]),
            ),
            SizedBox(
                height: getVerticalSize(95),
                child: ListView.separated(
                    padding: getPadding(left: 20, top: 20, right: 22),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: getHorizontalSize(14));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Listrectangle33ItemWidget();
                    })),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(left: 20, top: 27, right: 34),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Maruti Suzuki Alto K10",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleLargeBlack900),
                      Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage101,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(bottom: 5),
                          ),
                          Text("Know more",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelMediumGray80010_1),
                        ],
                      ),
                    ]),
              ),
            ),
            Padding(
                padding: getPadding(left: 20, top: 1),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("23K km",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall),
                      Container(
                          height: getSize(4),
                          width: getSize(4),
                          margin: getMargin(left: 12, top: 19, bottom: 8),
                          decoration: BoxDecoration(
                              color: appTheme.gray800,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(2)))),
                      Padding(
                          padding: getPadding(left: 13, top: 11),
                          child: Text("Petrol",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      Container(
                          height: getSize(4),
                          width: getSize(4),
                          margin: getMargin(left: 14, top: 19, bottom: 8),
                          decoration: BoxDecoration(
                              color: appTheme.gray800,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(2)))),
                      Padding(
                          padding: getPadding(left: 14, top: 11),
                          child: Text("Automatic",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      Spacer(),
                    ])),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: getPadding(left: 20, top: 19),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage102,
                          height: getSize(20),
                          width: getSize(20)),
                      Padding(
                          padding: getPadding(left: 16),
                          child: Text("Home Test Drive : Available",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall))
                    ]))),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: getPadding(left: 20, top: 19),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgMaskgroup20x20,
                          height: getSize(20),
                          width: getSize(20),
                          margin: getMargin(bottom: 1)),
                      Padding(
                          padding: getPadding(left: 16),
                          child: Text("H-5, Sector 3, Gurgoan",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall))
                    ]))),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                color: Color(0x3300C070),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 15, right: 15.0),
                  child: Text(
                    "   40+ cars available for test drive at this hub   ",
                    style: TextStyle(
                        color: Color(0xFF00C070), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
                padding: getPadding(left: 20, top: 27),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("₹ 15.75 Lakhs",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleLargeBlack900),
                      Spacer(),
                      Padding(
                          padding: getPadding(
                            bottom: 8,
                          ),
                          child: Text("₹28,668/m",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      CustomImageView(
                          imagePath: ImageConstant.imgMaskgroup13x13,
                          height: getSize(13),
                          width: getSize(13),
                          margin:
                              getMargin(left: 7, top: 3, right: 20, bottom: 13))
                    ])),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: getPadding(left: 21, top: 5),
                    child: Text("Get extended Warranty at ₹ 27,500",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: getPadding(
                      left: 5,
                      top: 10,
                      right: 5,
                      bottom: 10,
                    ),
                    decoration: AppDecoration.fill2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    width: getHorizontalSize(
                      167,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup14,
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                              margin: getMargin(
                                top: 2,
                                bottom: 16,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 9,
                              ),
                              child: Text(
                                "EXTENDED \nWARRANTY ",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallSemiBold,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 13,
                            bottom: 13,
                          ),
                          child: Text(
                            "10 month additional warranty coverage is available",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: getPadding(
                      left: 5,
                      top: 10,
                      right: 5,
                      bottom: 10,
                    ),
                    decoration: AppDecoration.fill2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    width: getHorizontalSize(
                      167,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/dolo.JPG",
                              height: 25,
                              width: 25,
                            ),
                            Padding(
                                padding: getPadding(
                                  left: 9,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16.0),
                                    children: [
                                      TextSpan(
                                        text: '5 DAY\n',
                                        style: CustomTextStyles
                                            .titleSmallGreenA700,
                                      ),
                                      TextSpan(
                                        text: 'WARRANTY',
                                        style:
                                            CustomTextStyles.titleSmallSemiBold,
                                      ),
                                    ],
                                  ),
                                )
                                // Text(
                                //   "EXTENDED \nWARRANTY ",
                                //   maxLines: 2,
                                //   overflow: TextOverflow.ellipsis,
                                //   textAlign: TextAlign.left,

                                // ),
                                ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 13,
                            bottom: 13,
                          ),
                          child: Text(
                            "You won’t use it\n through as you will love our cars",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(left: 20, top: 54, bottom: 20),
                child: Text("Car Overview",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage19,
                      height: getSize(
                        30,
                      ),
                      width: getSize(
                        30,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "Model Year",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "2023",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 107.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "Registry Year",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "2023",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 108.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "Fuel",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "Petrol",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 109.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "Km Driven",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "234\nkm",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 110.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "Transmission",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "Automatic",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 111.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "No. of Owners",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "2",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 112.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "Insurance Type",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "Comprehensive",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 113.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "RTO",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "DL3C",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 114.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "Car Location",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "Gurgaon",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: getPadding(left: 10, top: 50, bottom: 30),
                    child: Text("What we Offer?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 115.png",
                      height: 100,
                      width: 100,
                    ),
                    Container(
                        width: getHorizontalSize(113),
                        margin: getMargin(bottom: 18),
                        child: Text("Comprehensive\nWarranty",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall)),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage116,
                        height: getSize(85),
                        width: getSize(85),
                        margin: getMargin(top: 9, bottom: 6)),
                    Container(
                        width: getHorizontalSize(73),
                        margin: getMargin(left: 31, bottom: 18),
                        child: Text("250 Points\nInspected",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall)),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage117,
                        height: getSize(100),
                        width: getSize(100),
                        margin: getMargin(left: 35, right: 15)),
                    Container(
                        width: getHorizontalSize(83),
                        margin: getMargin(left: 42, top: 1),
                        child: Text("5 Days\nMoneyback \nGuarantee",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall))
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.maxFinite,
        padding: getPadding(top: 7, bottom: 7),
        decoration: AppDecoration.fill,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomElevatedButton(
                    text: "BOOK NOW",
                    margin: getMargin(right: 11, bottom: 1),
                    buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(45)))),
                    buttonTextStyle: CustomTextStyles.bodyMediumPrimary)),
            Expanded(
              child: CustomOutlinedButton(
                  text: "FREE TEST DRIVE",
                  margin: getMargin(left: 11, bottom: 1),
                  buttonStyle: CustomButtonStyles.outlineRedA700.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(
                        double.maxFinite,
                        getVerticalSize(45),
                      ),
                    ),
                  ),
                  buttonTextStyle: CustomTextStyles.bodyMediumRedA700),
            ),
          ]),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft28(BuildContext context) {
    Navigator.pop(context);
  }
}
