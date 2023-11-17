import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_icon_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../car_detail_page_screen/widgets/list3_item_widget.dart';
import '../car_detail_page_screen/widgets/list_one3_item_widget.dart';
import '../car_detail_page_screen/widgets/listrectangleei3_item_widget.dart';
import '../compare_navbar_screen/compaire_navbar2.dart';

// ignore_for_file: must_be_immutable
class CarDetailPageScreen2 extends StatefulWidget {
  CarDetailPageScreen2({Key? key}) : super(key: key);

  @override
  State<CarDetailPageScreen2> createState() => _CarDetailPageScreen2State();
}

class _CarDetailPageScreen2State extends State<CarDetailPageScreen2> {
  TextEditingController priceoneController = TextEditingController();
  TextEditingController group372Controller = TextEditingController();

  TextEditingController pricesevenController = TextEditingController();

  TextEditingController priceeightController = TextEditingController();
  int currentIndex = 0;
  List<String> imagePaths = [
    'assets/images/img_rectangle19.png',
    'assets/images/img_rectangle13.png',
    'assets/images/img_rectangle119_113x179.png',
    'assets/images/img_rectangle260.png',
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black87,
          onPressed: () {
            onTapViewupcoming(context);
          },
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.black87,
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.share_outlined,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20,
              child: ListView(
                  padding: getPadding(left: 15, right: 5),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Key Specifications",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallRedA700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Version",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Mileage",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Colours",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Over Take",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Alternative",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Images",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Videos",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Popular Cars",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Expert Reviews",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("News",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("Upcoming Launches",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallGray500),
                    )
                  ]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompareNavbarScreen2()));
              },
              child: Container(
                margin: getMargin(
                  left: 249,
                  top: 20,
                  right: 23,
                ),
                padding: getPadding(left: 9, top: 3, right: 9, bottom: 3),
                decoration: AppDecoration.outline2
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskgroup,
                        height: getSize(21),
                        width: getSize(21),
                        margin: getMargin(top: 1)),
                    Padding(
                      padding: getPadding(left: 7),
                      child: Text("COMPARE",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlueA700),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Perform shop now action
                        },
                        child: Container(
                          width: 350,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              setState(() {
                                currentIndex =
                                    (currentIndex - 1) % imagePaths.length;
                                if (currentIndex < 0) {
                                  currentIndex = imagePaths.length - 1;
                                }
                              });
                            },
                          ),
                          const SizedBox(width: 16),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              setState(() {
                                currentIndex =
                                    (currentIndex + 1) % imagePaths.length;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup40x40,
                  height: getSize(40),
                  width: getSize(40)),
              Padding(
                  padding: getPadding(left: 13, top: 12, bottom: 6),
                  child: Text("VIEW 360° FULL SCREEN",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallBlueA700
                          .copyWith(decoration: TextDecoration.underline)))
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Maruti Suzuki Alto K10",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleLargeBlack900),
                    Padding(
                      padding: getPadding(top: 6, bottom: 2),
                      child: Text(
                        "View Images",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBlueA700
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle239,
                    height: getSize(30),
                    width: getSize(30),
                    radius: BorderRadius.circular(getHorizontalSize(5))),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle240,
                    height: getSize(30),
                    width: getSize(30),
                    radius: BorderRadius.circular(getHorizontalSize(5)),
                    margin: getMargin(left: 9)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle241,
                    height: getSize(30),
                    width: getSize(30),
                    radius: BorderRadius.circular(getHorizontalSize(5)),
                    margin: getMargin(left: 9)),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle242,
                  height: getSize(30),
                  width: getSize(30),
                  radius: BorderRadius.circular(
                    getHorizontalSize(5),
                  ),
                  margin: getMargin(left: 9),
                )
              ]),
            ),
            Padding(
                padding: getPadding(left: 16, top: 4),
                child:
                Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text("Rs. 4.57L",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleLargeBlack900),
                  Padding(
                      padding: getPadding(left: 8, top: 7, bottom: 4),
                      child: Text("Onwards",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmall12_2)),
                  GestureDetector(
                      onTap: () {
                        bottomSheets(context);
                      },
                      child: Padding(
                          padding: getPadding(left: 23, top: 7, bottom: 1),
                          child: Text("View Price Breakup",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlueA700)))
                ])),
            Padding(
                padding: getPadding(left: 16, top: 3),
                child: Row(children: [
                  Text("On road price (GST)",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmall12_2),
                  Padding(
                      padding: getPadding(left: 6),
                      child: Text("Noida",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelLargeBlueA700Bold)),
                  CustomImageView(
                      svgPath: ImageConstant.imgMdilocation,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(left: 4))
                ])),
            Padding(
              padding: getPadding(left: 16, top: 5),
              child: Row(children: [
                CustomImageView(
                    svgPath: ImageConstant.imgMaterialsymbolsstar,
                    height: getSize(22),
                    width: getSize(22)),
                CustomImageView(
                    svgPath: ImageConstant.imgMaterialsymbolsstar,
                    height: getSize(22),
                    width: getSize(22),
                    margin: getMargin(left: 4)),
                CustomImageView(
                    svgPath: ImageConstant.imgMaterialsymbolsstar,
                    height: getSize(22),
                    width: getSize(22),
                    margin: getMargin(left: 4)),
                CustomImageView(
                    svgPath: ImageConstant.imgMaterialsymbolsstar,
                    height: getSize(22),
                    width: getSize(22),
                    margin: getMargin(left: 4)),
                CustomImageView(
                    svgPath: ImageConstant.imgMaterialsymbolsstarhalf,
                    height: getSize(22),
                    width: getSize(22),
                    margin: getMargin(left: 4)),
                Container(
                  width: getHorizontalSize(77),
                  margin: getMargin(left: 13, top: 3, bottom: 2),
                  padding: getPadding(left: 8, top: 1, right: 8, bottom: 1),
                  decoration: AppDecoration.txtOutline.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder2),
                  child: Text(
                    "86 Reviews",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelMediumGray80001.copyWith(
                      letterSpacing: getHorizontalSize(0.2),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
                padding: getPadding(right: 230, top: 2),
                child: Text("Get EMI assistance",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleSmallBlueA700)),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(left: 6, top: 47),
              child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(top: 1),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  padding: getPadding(all: 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgBookmark)),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(top: 10),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                            width: getHorizontalSize(85),
                                            child: Text("Key Specifications",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                      ]),
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: getPadding(left: 12, top: 1, bottom: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  padding: getPadding(all: 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCar)),
                              Padding(
                                padding: getPadding(top: 12),
                                child: Text("Versions",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: getPadding(left: 23, top: 1, bottom: 14),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  padding: getPadding(all: 13),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup165)),
                              Padding(
                                padding: getPadding(top: 14),
                                child: Text("Mileage",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                          padding: getPadding(left: 22, top: 1, bottom: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    padding: getPadding(all: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSettings)),
                                Padding(
                                    padding: getPadding(left: 4, top: 12),
                                    child: Text("Colours",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge))
                              ])),
                      Padding(
                        padding: getPadding(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin: getMargin(right: 1),
                                  padding: getPadding(all: 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding: getPadding(top: 13),
                                child: Text("Our Take",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: getPadding(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin: getMargin(right: 1),
                                  padding: getPadding(all: 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding: getPadding(top: 13),
                                child: Text("Alternative",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: getPadding(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin: getMargin(right: 1),
                                  padding: getPadding(all: 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding: getPadding(top: 13),
                                child: Text("Images",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: getPadding(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin: getMargin(right: 1),
                                  padding: getPadding(all: 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding: getPadding(top: 13),
                                child: Text("Videos",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: getPadding(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin: getMargin(right: 1),
                                  padding: getPadding(all: 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding: getPadding(top: 13),
                                child: Text("Expert \nReviews",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                    ]),
              ),
            ),
            Padding(
                padding: getPadding(right: 230, top: 2),
                child: Text("Key Specification",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: getSize(30),
                                width: getSize(30)),
                            Padding(
                                padding: getPadding(top: 10),
                                child: Text("Make",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumGray800Bold)),
                            Padding(
                                padding: getPadding(left: 1, top: 5),
                                child: Text("Alto",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: getSize(30),
                                width: getSize(30)),
                            Padding(
                                padding: getPadding(top: 10),
                                child: Text("Model Year",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumGray800Bold)),
                            Padding(
                                padding: getPadding(left: 1, top: 5),
                                child: Text("2023",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: getSize(30),
                                width: getSize(30)),
                            Padding(
                                padding: getPadding(top: 10),
                                child: Text("Engine Type",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumGray800Bold)),
                            Padding(
                                padding: getPadding(left: 1, top: 5),
                                child: Text("Diesel",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: getSize(30),
                                width: getSize(30)),
                            Padding(
                                padding: getPadding(top: 10),
                                child: Text("Horse Power",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumGray800Bold)),
                            Padding(
                                padding: getPadding(left: 1, top: 5),
                                child: Text("Diesel",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge))
                          ]),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage22,
                                  height: getSize(30),
                                  width: getSize(30),
                                  margin: getMargin(left: 5)),
                              Padding(
                                  padding: getPadding(left: 2, top: 12),
                                  child: Text("Torque",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Text("200 Nm",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge))
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage23,
                                  height: getVerticalSize(30),
                                  width: getHorizontalSize(39),
                                  margin: getMargin(left: 8)),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("Top Speed",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Padding(
                                  padding: getPadding(left: 1, top: 4),
                                  child: Text("227 km/h",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge))
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage27,
                                  height: getSize(30),
                                  width: getSize(30),
                                  margin: getMargin(left: 14)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("Fuel Economy",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 4),
                                      child: Text("22-31 km/l",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelLarge)))
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage25,
                                  height: getSize(30),
                                  width: getSize(30)),
                              Padding(
                                  padding: getPadding(top: 11),
                                  child: Text("Safety Ratings",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 4, right: 17),
                                      child: Text("4 Star",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelLarge)))
                            ])
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage26,
                                  height: getSize(30),
                                  width: getSize(30)),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: Text("0-60 km/h",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Padding(
                                  padding: getPadding(left: 1, top: 5),
                                  child: Text("5 sec",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge))
                            ]),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage24,
                                  height: getSize(30),
                                  width: getSize(30)),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: Text("Mileage",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Padding(
                                  padding: getPadding(left: 1, top: 5),
                                  child: Text("45 km/ litre",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge))
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: getPadding(right: 230, top: 20),
                child: Text("Version (2)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),
            Container(
              width: double.infinity,
              margin: getMargin(top: 10),
              padding: getPadding(left: 18, top: 14, right: 18, bottom: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskgroup24x24,
                        height: getSize(24),
                        width: getSize(24),
                        margin: getMargin(bottom: 1)),
                    Padding(
                        padding: getPadding(left: 14, top: 4),
                        child: Text("Fuel Type",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1)),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 10),
                      child: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    Container(
                      width: 2,
                      height: 30,
                      color: Colors.black87,
                    ),
                    // CustomImageView(
                    //     svgPath: ImageConstant.imgArrow1,
                    //     height: getSize(1),
                    //     width: getSize(1),
                    //     margin: getMargin(left: 35, top: 15, bottom: 9)),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage31,
                        height: getSize(24),
                        width: getSize(24),
                        margin: getMargin(left: 20, bottom: 1)),
                    Padding(
                        padding: getPadding(left: 10, top: 2, bottom: 1),
                        child: Text("Transmission",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1)),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                  ]),
            ),
            GestureDetector(
              onTap: () {
                onTapVersion(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Alto K10 Std ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900),
                            Text("  ( CLICK TO VIEW )",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlueA700),
                          ],
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Rs. 3.05 Cr",
                                  style: CustomTextStyles.labelMediumGray80010),
                              TextSpan(
                                  text: " ",
                                  style: CustomTextStyles.bodySmallGray800_2),
                              TextSpan(
                                  text: "on Road Price (GST), Gaziabad",
                                  style: CustomTextStyles.bodySmallGray800Light)
                            ]),
                            textAlign: TextAlign.left),
                      ],
                    ),
                    Text("Rs. 8.04 Lalh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBlueA700),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Alto K10 Lxi ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900),
                          Text("  ( CLICK TO VIEW )",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlueA700),
                        ],
                      ),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Rs. 3.05 Cr",
                                style: CustomTextStyles.labelMediumGray80010),
                            TextSpan(
                                text: " ",
                                style: CustomTextStyles.bodySmallGray800_2),
                            TextSpan(
                                text: "on Road Price (GST), Gaziabad",
                                style: CustomTextStyles.bodySmallGray800Light)
                          ]),
                          textAlign: TextAlign.left),
                    ],
                  ),
                  Text("Rs. 8.04 Lalh",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallBlueA700),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Alto K10 Vxi ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900),
                          Text("  ( CLICK TO VIEW )",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlueA700),
                        ],
                      ),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Rs. 3.05 Cr",
                                style: CustomTextStyles.labelMediumGray80010),
                            TextSpan(
                                text: " ",
                                style: CustomTextStyles.bodySmallGray800_2),
                            TextSpan(
                                text: "on Road Price (GST), Gaziabad",
                                style: CustomTextStyles.bodySmallGray800Light)
                          ]),
                          textAlign: TextAlign.left),
                    ],
                  ),
                  Text("Rs. 8.04 Lalh",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallBlueA700),
                ],
              ),
            ),
            Padding(
                padding: getPadding(right: 280, top: 20),
                child: Text("Mileage",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Rs. 8.04 Lalh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.black87,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("CNG Manual                ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                        Text("3982 cc",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                      ],
                    ),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage42,
                        height: getSize(30),
                        width: getSize(50),
                        margin: getMargin(bottom: 1)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Rs. 8.04 Lalh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.black87,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Petrol, Automatic(TC)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                        Text("3982 cc",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                      ],
                    ),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage42,
                        height: getSize(30),
                        width: getSize(50),
                        margin: getMargin(bottom: 1)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Rs. 8.04 Lalh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.black87,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Diesel Manual           ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                        Text("3982 cc",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                      ],
                    ),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage42,
                        height: getSize(30),
                        width: getSize(50),
                        margin: getMargin(bottom: 1)),
                  ],
                ),
              ),
            ),
            Padding(
                padding: getPadding(right: 280, top: 50),
                child: Text("Colors (10)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),
            CustomImageView(
              imagePath: ImageConstant.imgGroup87,
              height: getVerticalSize(40),
              width: getHorizontalSize(352),
              alignment: Alignment.center,
              margin: getMargin(top: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                width: double.infinity,
                color: Colors.grey,
                child: Column(
                  children: [
                    Padding(
                        padding: getPadding(top: 30, right: 250),
                        child: Text("Our Take",
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: getPadding(left: 6, top: 47),
                      child: IntrinsicWidth(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 280,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 30),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          CustomImageView(
                                              imagePath:
                                              ImageConstant.imgImage28,
                                              height: getSize(40),
                                              width: getSize(40)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 25, top: 7, bottom: 2),
                                              child: Text("Good Things",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ]),
                                        Container(
                                            width: getHorizontalSize(256),
                                            margin: getMargin(left: 6, top: 20),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2)),
                                        Container(
                                            width: getHorizontalSize(256),
                                            margin: getMargin(left: 6, top: 9),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2)),
                                        Container(
                                            width: getHorizontalSize(256),
                                            margin: getMargin(left: 6, top: 9),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2))
                                      ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: Container(
                                  height: 280,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.red)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, left: 30),
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgImage29,
                                                height: getSize(40),
                                                width: getSize(40)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25,
                                                    top: 7,
                                                    bottom: 2),
                                                child: Text("Good Things",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.titleLarge))
                                          ]),
                                          Container(
                                              width: getHorizontalSize(256),
                                              margin:
                                              getMargin(left: 6, top: 20),
                                              child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                  maxLines: 3,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2)),
                                          Container(
                                              width: getHorizontalSize(256),
                                              margin:
                                              getMargin(left: 6, top: 9),
                                              child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                  maxLines: 3,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2)),
                                          Container(
                                              width: getHorizontalSize(256),
                                              margin:
                                              getMargin(left: 6, top: 9),
                                              child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                  maxLines: 3,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2))
                                        ]),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Padding(
                        padding: getPadding(right: 272, top: 36),
                        child: Text("Verdict",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleLargeBlueA700)),
                    Container(
                        width: getHorizontalSize(331),
                        margin: getMargin(left: 2, top: 13, right: 24),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmall12_2)),
                    Padding(
                        padding: getPadding(top: 18, left: 20, right: 20),
                        child: Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: appTheme.blueA700,
                            endIndent: getHorizontalSize(6))),
                    Padding(
                        padding: getPadding(right: 260, top: 25),
                        child: Text("Review",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleLargeBlueA700)),
                    Container(
                        width: getHorizontalSize(331),
                        margin:
                        getMargin(left: 3, top: 13, right: 23, bottom: 50),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmall12_2))
                  ],
                ),
              ),
            ),
            Padding(
                padding: getPadding(top: 30, right: 250),
                child: Text("Alternatives",
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge)),
            Padding(
                padding: getPadding(right: 71, top: 12),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Showing similar cars in same ‘",
                          style: CustomTextStyles.bodySmall12),
                      TextSpan(
                          text: "Hatchback’ category",
                          style: CustomTextStyles.labelLargeBlack900SemiBold_1)
                    ]),
                    textAlign: TextAlign.left)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(left: 6, top: 47),
              child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          onTapTxtComparewithalto(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: getVerticalSize(131),
                                        width: getHorizontalSize(136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: getVerticalSize(131),
                                                width: getHorizontalSize(136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          onTapColumnmarutialt(
                                                              context);
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize.min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  getVerticalSize(
                                                                      83),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      133),
                                                                  margin:
                                                                  getMargin(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      top: 7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment: Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top: 4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                          textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                          style: CustomTextStyles
                                                                              .bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => CompareNavbarScreen2()));
                                      },
                                      child: Padding(
                                        padding: getPadding(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 15),
                                      child: GestureDetector(
                                        onTap: () {
                                          bottomSheets(context);
                                        },
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blueAccent),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4))),
                                          child: Center(
                                            child: Text("View Price Breakup",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme.textTheme.labelSmall),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtComparewithalto(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: getVerticalSize(131),
                                        width: getHorizontalSize(136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: getVerticalSize(131),
                                                width: getHorizontalSize(136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          onTapColumnmarutialt(
                                                              context);
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize.min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  getVerticalSize(
                                                                      83),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      133),
                                                                  margin:
                                                                  getMargin(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      top: 7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment: Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top: 4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                          textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                          style: CustomTextStyles
                                                                              .bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(

                                      child: Padding(
                                        padding: getPadding(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtComparewithalto(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: getVerticalSize(131),
                                        width: getHorizontalSize(136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: getVerticalSize(131),
                                                width: getHorizontalSize(136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          onTapColumnmarutialt(
                                                              context);
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize.min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  getVerticalSize(
                                                                      83),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      133),
                                                                  margin:
                                                                  getMargin(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      top: 7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment: Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top: 4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                          textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                          style: CustomTextStyles
                                                                              .bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(

                                      child: Padding(
                                        padding: getPadding(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtComparewithalto(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: getVerticalSize(131),
                                        width: getHorizontalSize(136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: getVerticalSize(131),
                                                width: getHorizontalSize(136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          onTapColumnmarutialt(
                                                              context);
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize.min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  getVerticalSize(
                                                                      83),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      133),
                                                                  margin:
                                                                  getMargin(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      top: 7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment: Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top: 4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                          textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                          style: CustomTextStyles
                                                                              .bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(

                                      child: Padding(
                                        padding: getPadding(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
                padding: getPadding(top: 30, right: 250),
                child: Text("Images",
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(left: 6, top: 47),
              child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(208),
                          width: getHorizontalSize(372),
                          margin: getMargin(left: 18, top: 5),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                              ImageConstant.imgDownload11,
                                              height: getVerticalSize(168),
                                              width: getHorizontalSize(224)),
                                          CustomImageView(
                                              imagePath:
                                              ImageConstant.imgDownload21,
                                              height: getVerticalSize(168),
                                              width: getHorizontalSize(130),
                                              margin: getMargin(left: 17))
                                        ])),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: getPadding(right: 18),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle259,
                                                  height: getSize(54),
                                                  width: getSize(54)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle260,
                                                  height: getSize(54),
                                                  width: getSize(54),
                                                  margin: getMargin(left: 9)),
                                              Container(
                                                  height: getSize(54),
                                                  width: getSize(54),
                                                  margin: getMargin(left: 9),
                                                  child: Stack(
                                                      alignment:
                                                      Alignment.centerRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle261,
                                                            height: getSize(54),
                                                            width: getSize(54),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                getPadding(
                                                                    right:
                                                                    9),
                                                                child: Text(
                                                                    "60+",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .titleMediumPrimary)))
                                                      ]))
                                            ])))
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle285,
                          height: getVerticalSize(83),
                          width: getHorizontalSize(133),
                          margin: getMargin(left: 3)),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle259,
                          height: getVerticalSize(83),
                          width: getHorizontalSize(133),
                          margin: getMargin(left: 3)),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle285,
                          height: getVerticalSize(83),
                          width: getHorizontalSize(133),
                          margin: getMargin(left: 3)),
                    ]),
              ),
            ),
            Padding(
                padding: getPadding(right: 188, top: 55),
                child: Text("Alto K10 Videos",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Padding(
              padding: getPadding(left: 16, top: 13),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  IntrinsicWidth(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: getVerticalSize(159),
                                  width: getHorizontalSize(280),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle219149x265,
                                            height: getVerticalSize(149),
                                            width: getHorizontalSize(280),
                                            radius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  getHorizontalSize(4)),
                                              topRight: Radius.circular(
                                                getHorizontalSize(4),
                                              ),
                                            ),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgIconparksolidplay,
                                            height: getSize(24),
                                            width: getSize(24),
                                            alignment: Alignment.center),
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      height: getVerticalSize(149),
                                      width: getHorizontalSize(265),
                                      margin: getMargin(left: 15),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle220149x265,
                                                height: getVerticalSize(149),
                                                width: getHorizontalSize(265),
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIconparksolidplay,
                                                height: getSize(24),
                                                width: getSize(24),
                                                alignment: Alignment.center)
                                          ])),
                                )
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: getPadding(
                                        left: 12,
                                        top: 10,
                                        right: 52,
                                        bottom: 10),
                                    decoration: AppDecoration.outline1.copyWith(
                                        borderRadius:
                                        BorderRadiusStyle.customBorderBL4),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text("Maruti Invicto-Youtube video ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.titleMedium),
                                          Padding(
                                            padding: getPadding(
                                                left: 2, top: 14, bottom: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      height:
                                                      getVerticalSize(16),
                                                      width:
                                                      getHorizontalSize(22),
                                                      margin: getMargin(
                                                          top: 3, bottom: 3),
                                                      child: Stack(
                                                          alignment:
                                                          Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgContrast,
                                                                height:
                                                                getVerticalSize(
                                                                    16),
                                                                width:
                                                                getHorizontalSize(
                                                                    22),
                                                                alignment:
                                                                Alignment
                                                                    .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgRefresh,
                                                                height:
                                                                getSize(9),
                                                                width:
                                                                getSize(9),
                                                                alignment:
                                                                Alignment
                                                                    .center)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                      getPadding(left: 8),
                                                      child: Text("140",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleMediumGray800_1)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUiwlikeo,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  Padding(
                                                    padding:
                                                    getPadding(left: 8),
                                                    child: Text("23",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleMediumGray800_1),
                                                  ),
                                                ]),
                                          ),
                                        ]),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: getMargin(left: 15),
                                    padding: getPadding(
                                        left: 12,
                                        top: 10,
                                        right: 12,
                                        bottom: 10),
                                    decoration: AppDecoration.outline1.copyWith(
                                        borderRadius:
                                        BorderRadiusStyle.customBorderBL4),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text("Maruti Invicto-Youtube video ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.titleMedium),
                                          Padding(
                                            padding: getPadding(
                                                left: 2, top: 14, bottom: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      height:
                                                      getVerticalSize(16),
                                                      width:
                                                      getHorizontalSize(22),
                                                      margin: getMargin(
                                                          top: 3, bottom: 3),
                                                      child: Stack(
                                                          alignment:
                                                          Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgContrast,
                                                                height:
                                                                getVerticalSize(
                                                                    16),
                                                                width:
                                                                getHorizontalSize(
                                                                    22),
                                                                alignment:
                                                                Alignment
                                                                    .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgRefresh,
                                                                height:
                                                                getSize(9),
                                                                width:
                                                                getSize(9),
                                                                alignment:
                                                                Alignment
                                                                    .center)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                      getPadding(left: 8),
                                                      child: Text("140",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleMediumGray800_1)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUiwlikeo,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  Padding(
                                                    padding:
                                                    getPadding(left: 8),
                                                    child: Text("23",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleMediumGray800_1),
                                                  ),
                                                ]),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        ]),
                  ),
                  Container(
                    height: getVerticalSize(243),
                    width: getHorizontalSize(78),
                    margin: getMargin(left: 15),
                  ),
                ]),
              ),
            ),
            Container(
              margin: getMargin(top: 29),
              padding: getPadding(
                left: 49,
                right: 49,
              ),
              decoration: AppDecoration.fill,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage41,
                height: getVerticalSize(120),
                width: getHorizontalSize(287),
              ),
            ),
            Padding(
                padding: getPadding(right: 118, top: 55, bottom: 20),
                child: Text("Top Popular Cars In India",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: getVerticalSize(181),
                child: ListView.separated(
                    padding: getPadding(left: 18, top: 6),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: getHorizontalSize(14));
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Listrectangleei3ItemWidget();
                    }),
              ),
            ),
            Padding(
                padding: getPadding(
                  right: 38,
                  top: 55,
                ),
                child: Text("Popular Compact Hatchback Cars",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(left: 6, top: 47),
              child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: getVerticalSize(131),
                                      width: getHorizontalSize(136),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Rs.",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900)),
                                            SizedBox(
                                              height: getVerticalSize(131),
                                              width: getHorizontalSize(136),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 24),
                                                            child: Text(
                                                                "4.57 Lakh",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        onTapColumnmarutialt(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                ImageConstant
                                                                    .imgMarutialto1667634241,
                                                                height:
                                                                getVerticalSize(
                                                                    83),
                                                                width:
                                                                getHorizontalSize(
                                                                    133),
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    3)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 7),
                                                                child: Text(
                                                                    "Hyundai  Santro  2023",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall12_1)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 4,
                                                                        right:
                                                                        1),
                                                                    child: Text(
                                                                        "Onwards",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: CustomTextStyles
                                                                            .bodySmall9)))
                                                          ]),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtComparewithalto(context);
                                    },
                                    child: Padding(
                                      padding: getPadding(left: 30, top: 10),
                                      child: Text("Compare with Alto K10",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelSmall),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 15),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blueAccent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                      child: Center(
                                        child: Text("View Price Breakup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: getVerticalSize(131),
                                      width: getHorizontalSize(136),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Rs.",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900)),
                                            SizedBox(
                                              height: getVerticalSize(131),
                                              width: getHorizontalSize(136),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 24),
                                                            child: Text(
                                                                "4.57 Lakh",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        onTapColumnmarutialt(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                ImageConstant
                                                                    .imgMarutialto1667634241,
                                                                height:
                                                                getVerticalSize(
                                                                    83),
                                                                width:
                                                                getHorizontalSize(
                                                                    133),
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    3)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 7),
                                                                child: Text(
                                                                    "Hyundai  Santro  2023",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall12_1)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 4,
                                                                        right:
                                                                        1),
                                                                    child: Text(
                                                                        "Onwards",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: CustomTextStyles
                                                                            .bodySmall9)))
                                                          ]),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtComparewithalto(context);
                                    },
                                    child: Padding(
                                      padding: getPadding(left: 30, top: 10),
                                      child: Text("Compare with Alto K10",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelSmall),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 15),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blueAccent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                      child: Center(
                                        child: Text("View Price Breakup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: getVerticalSize(131),
                                      width: getHorizontalSize(136),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Rs.",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900)),
                                            SizedBox(
                                              height: getVerticalSize(131),
                                              width: getHorizontalSize(136),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 24),
                                                            child: Text(
                                                                "4.57 Lakh",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        onTapColumnmarutialt(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                ImageConstant
                                                                    .imgMarutialto1667634241,
                                                                height:
                                                                getVerticalSize(
                                                                    83),
                                                                width:
                                                                getHorizontalSize(
                                                                    133),
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    3)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 7),
                                                                child: Text(
                                                                    "Hyundai  Santro  2023",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall12_1)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 4,
                                                                        right:
                                                                        1),
                                                                    child: Text(
                                                                        "Onwards",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: CustomTextStyles
                                                                            .bodySmall9)))
                                                          ]),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtComparewithalto(context);
                                    },
                                    child: Padding(
                                      padding: getPadding(left: 30, top: 10),
                                      child: Text("Compare with Alto K10",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelSmall),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 15),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blueAccent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                      child: Center(
                                        child: Text("View Price Breakup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: getVerticalSize(131),
                                      width: getHorizontalSize(136),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Rs.",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900)),
                                            SizedBox(
                                              height: getVerticalSize(131),
                                              width: getHorizontalSize(136),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 24),
                                                            child: Text(
                                                                "4.57 Lakh",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        onTapColumnmarutialt(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                ImageConstant
                                                                    .imgMarutialto1667634241,
                                                                height:
                                                                getVerticalSize(
                                                                    83),
                                                                width:
                                                                getHorizontalSize(
                                                                    133),
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    3)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 7),
                                                                child: Text(
                                                                    "Hyundai  Santro  2023",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall12_1)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 4,
                                                                        right:
                                                                        1),
                                                                    child: Text(
                                                                        "Onwards",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: CustomTextStyles
                                                                            .bodySmall9)))
                                                          ]),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtComparewithalto(context);
                                    },
                                    child: Padding(
                                      padding: getPadding(left: 30, top: 10),
                                      child: Text("Compare with Alto K10",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelSmall),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 15),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blueAccent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                      child: Center(
                                        child: Text("View Price Breakup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: getVerticalSize(131),
                                      width: getHorizontalSize(136),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Rs.",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900)),
                                            SizedBox(
                                              height: getVerticalSize(131),
                                              width: getHorizontalSize(136),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 24),
                                                            child: Text(
                                                                "4.57 Lakh",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        onTapColumnmarutialt(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                ImageConstant
                                                                    .imgMarutialto1667634241,
                                                                height:
                                                                getVerticalSize(
                                                                    83),
                                                                width:
                                                                getHorizontalSize(
                                                                    133),
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    3)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 7),
                                                                child: Text(
                                                                    "Hyundai  Santro  2023",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall12_1)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 4,
                                                                        right:
                                                                        1),
                                                                    child: Text(
                                                                        "Onwards",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: CustomTextStyles
                                                                            .bodySmall9)))
                                                          ]),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtComparewithalto(context);
                                    },
                                    child: Padding(
                                      padding: getPadding(left: 30, top: 10),
                                      child: Text("Compare with Alto K10",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelSmall),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 15),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blueAccent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                      child: Center(
                                        child: Text("View Price Breakup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: getVerticalSize(131),
                                      width: getHorizontalSize(136),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Rs.",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900)),
                                            SizedBox(
                                              height: getVerticalSize(131),
                                              width: getHorizontalSize(136),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 24),
                                                            child: Text(
                                                                "4.57 Lakh",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        onTapColumnmarutialt(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                ImageConstant
                                                                    .imgMarutialto1667634241,
                                                                height:
                                                                getVerticalSize(
                                                                    83),
                                                                width:
                                                                getHorizontalSize(
                                                                    133),
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    3)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 7),
                                                                child: Text(
                                                                    "Hyundai  Santro  2023",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall12_1)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 4,
                                                                        right:
                                                                        1),
                                                                    child: Text(
                                                                        "Onwards",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: CustomTextStyles
                                                                            .bodySmall9)))
                                                          ]),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtComparewithalto(context);
                                    },
                                    child: Padding(
                                      padding: getPadding(left: 30, top: 10),
                                      child: Text("Compare with Alto K10",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelSmall),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 15),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blueAccent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                      child: Center(
                                        child: Text("View Price Breakup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: getVerticalSize(131),
                                      width: getHorizontalSize(136),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Rs.",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900)),
                                            SizedBox(
                                              height: getVerticalSize(131),
                                              width: getHorizontalSize(136),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 24),
                                                            child: Text(
                                                                "4.57 Lakh",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        onTapColumnmarutialt(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                ImageConstant
                                                                    .imgMarutialto1667634241,
                                                                height:
                                                                getVerticalSize(
                                                                    83),
                                                                width:
                                                                getHorizontalSize(
                                                                    133),
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    3)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 7),
                                                                child: Text(
                                                                    "Hyundai  Santro  2023",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall12_1)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 4,
                                                                        right:
                                                                        1),
                                                                    child: Text(
                                                                        "Onwards",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: CustomTextStyles
                                                                            .bodySmall9)))
                                                          ]),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtComparewithalto(context);
                                    },
                                    child: Padding(
                                      padding: getPadding(left: 30, top: 10),
                                      child: Text("Compare with Alto K10",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelSmall),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 15),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blueAccent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                      child: Center(
                                        child: Text("View Price Breakup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
                padding: getPadding(
                  right: 38,
                  top: 55,
                ),
                child: Text("Alto K10 Price In Cities Near Noida",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Container(
                width: double.maxFinite,
                margin: getMargin(top: 19),
                padding: getPadding(left: 19, top: 5, right: 19, bottom: 5),
                decoration: AppDecoration.fill,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("City",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                              CustomTextStyles.labelLargeBlack900SemiBold)),
                      Padding(
                          padding: getPadding(right: 56, bottom: 2),
                          child: Text("On-Road Price",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                              CustomTextStyles.labelLargeBlack900SemiBold))
                    ])),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: getPadding(left: 19, top: 18, right: 21),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("New Delhi",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                              CustomTextStyles.titleSmallBlueA700SemiBold),
                          Text("₹6.96 Lakh onwards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1)
                        ]))),
            Container(
                height: getVerticalSize(1),
                width: double.maxFinite,
                margin: getMargin(top: 17),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800))),
                ])),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: getPadding(left: 19, top: 18, right: 21),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gaziabad",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                              CustomTextStyles.titleSmallBlueA700SemiBold),
                          Text("₹6.96 Lakh onwards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1)
                        ]))),
            Container(
                height: getVerticalSize(1),
                width: double.maxFinite,
                margin: getMargin(top: 17),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800))),
                ])),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: getPadding(left: 19, top: 18, right: 21),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Jaipur",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                              CustomTextStyles.titleSmallBlueA700SemiBold),
                          Text("₹6.96 Lakh onwards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1)
                        ]))),
            Container(
                height: getVerticalSize(1),
                width: double.maxFinite,
                margin: getMargin(top: 17),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800))),
                ])),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(left: 19, top: 18, right: 21),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lucknow",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlueA700SemiBold),
                      Text("₹6.96 Lakh onwards",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlack900_1)
                    ]),
              ),
            ),
            Container(
              height: getVerticalSize(1),
              width: double.maxFinite,
              margin: getMargin(top: 17),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                        height: getVerticalSize(1),
                        thickness: getVerticalSize(1),
                        color: appTheme.gray800),
                  ),
                ),
              ]),
            ),
            CustomOutlinedButton(
                text: "View More Cities",
                margin: getMargin(left: 16, top: 20, right: 21),
                buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(45)))),
                buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1,
                alignment: Alignment.center),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(246),
                width: getHorizontalSize(317),
                margin: getMargin(top: 83),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle250,
                                height: getVerticalSize(71),
                                width: getHorizontalSize(311)),
                            Padding(
                              padding: getPadding(top: 32),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgDocument,
                                      height: getSize(51),
                                      width: getSize(51),
                                      margin: getMargin(top: 2, bottom: 76)),
                                  Padding(
                                    padding: getPadding(left: 11),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text("Maruti Suzuki Alto K10 Brochure",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleMedium),
                                        Container(
                                            width: getHorizontalSize(235),
                                            margin: getMargin(top: 2),
                                            child: Text(
                                                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodyMediumGray70001)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 21, left: 30),
                                                child: Text("Download Brochure",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleSmallRed600_1)))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDownload,
                      height: getSize(42),
                      width: getSize(42),
                      alignment: Alignment.bottomLeft,
                      margin: getMargin(left: 58, bottom: 3),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: getPadding(
                  right: 188,
                  top: 55,
                ),
                child: Text("Expert Reviews",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(left: 14, right: 14),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: getSize(40),
                                      width: getSize(40),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(20))),
                                  Padding(
                                      padding: getPadding(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: getHorizontalSize(244),
                                  margin: getMargin(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: getSize(40),
                                      width: getSize(40),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(20))),
                                  Padding(
                                      padding: getPadding(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: getHorizontalSize(244),
                                  margin: getMargin(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: getSize(40),
                                      width: getSize(40),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(20))),
                                  Padding(
                                      padding: getPadding(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: getHorizontalSize(244),
                                  margin: getMargin(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(left: 14, right: 14),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: getSize(40),
                                      width: getSize(40),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(20))),
                                  Padding(
                                      padding: getPadding(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: getHorizontalSize(244),
                                  margin: getMargin(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: getSize(40),
                                      width: getSize(40),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(20))),
                                  Padding(
                                      padding: getPadding(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: getHorizontalSize(244),
                                  margin: getMargin(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: getSize(40),
                                      width: getSize(40),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(20))),
                                  Padding(
                                      padding: getPadding(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: getHorizontalSize(244),
                                  margin: getMargin(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: getPadding(
                  right: 108,
                  top: 55,
                ),
                child: Text("Alto K10 News & Updates",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: getVerticalSize(196),
                child: ListView.separated(
                    padding: getPadding(left: 22, top: 21),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: getHorizontalSize(14),
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListOne3ItemWidget();
                    }),
              ),
            ),

            //add

            Padding(
              padding: getPadding(
                right: 108,
                top: 55,
              ),
              child: Text("Just Launch Cars In India",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleLarge),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: getVerticalSize(187),
                child: ListView.separated(
                    padding: getPadding(left: 19, top: 12),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: getHorizontalSize(14));
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return List3ItemWidget();
                    }),
              ),
            ),
            Padding(
              padding: getPadding(
                right: 158,
                top: 55,
                bottom: 10,
              ),
              child: Text("Upcoming Lanches",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleLarge),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: getVerticalSize(196),
                child: ListView.separated(
                    padding: getPadding(left: 22, top: 21),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: getHorizontalSize(14),
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListOne3ItemWidget();
                    }),
              ),
            ),
            CustomOutlinedButton(
                text: "View upcoming all Luanches",
                margin: getMargin(bottom: 20, left: 15, top: 18, right: 15),
                buttonStyle: CustomButtonStyles.outlineGreenA400.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      double.maxFinite,
                      getVerticalSize(45),
                    ),
                  ),
                ),
                buttonTextStyle: CustomTextStyles.titleSmallGreenA400,
                onTap: () {
                  onTapViewupcoming(context);
                },
                alignment: Alignment.center),

            // Bottom Sheets Containt
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: getMargin(left: 18, right: 18, bottom: 18),
        decoration: AppDecoration.fill,
        child: CustomElevatedButton(
          text: "Get New Offers",
          buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
            fixedSize: MaterialStateProperty.all<Size>(
              Size(
                double.maxFinite,
                getVerticalSize(45),
              ),
            ),
          ),
          buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          32,
                        ),
                        title: Padding(
                          padding: getPadding(
                            left: 32,
                          ),
                          child: Text(
                            "Fill your Details",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.labelLargeBlack900SemiBold,
                          ),
                        ),
                        actions: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: AppbarImage(
                              height: getSize(
                                15,
                              ),
                              width: getSize(
                                15,
                              ),
                              imagePath: ImageConstant.imgImage70,
                              margin: getMargin(
                                left: 21,
                                right: 21,
                                bottom: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomTextFormField(
                        // controller: nameController,
                        margin: getMargin(
                          left: 32,
                          top: 17,
                          right: 28,
                        ),
                        contentPadding: getPadding(
                          left: 12,
                          top: 9,
                          right: 12,
                          bottom: 9,
                        ),
                        textStyle: CustomTextStyles.bodySmallGray80012,
                        hintText: "Enter your Name",
                        hintStyle: CustomTextStyles.bodySmallGray80012,
                        textInputAction: TextInputAction.next,
                        filled: true,
                        fillColor: appTheme.blueGray100,
                        defaultBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                        enabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                        focusedBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                        disabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                      ),
                      CustomTextFormField(
                        // controller: mobilenumberController,
                        margin: getMargin(
                          left: 32,
                          top: 15,
                          right: 28,
                        ),
                        contentPadding: getPadding(
                          left: 12,
                          top: 9,
                          right: 12,
                          bottom: 9,
                        ),
                        textStyle: CustomTextStyles.bodySmallGray80012,
                        hintText: "Enter your Mobile Number",
                        hintStyle: CustomTextStyles.bodySmallGray80012,
                        textInputType: TextInputType.phone,
                        filled: true,
                        fillColor: appTheme.blueGray100,
                        defaultBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                        enabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                        focusedBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                        disabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                      ),
                      CustomOutlinedButton(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        text: "SUBMIT",
                        margin: getMargin(
                          left: 33,
                          top: 26,
                          right: 27,
                        ),
                        buttonStyle: CustomButtonStyles.outlinePrimary.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                              double.maxFinite,
                              getVerticalSize(
                                45,
                              ),
                            ))),
                        buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: getPadding(
                            top: 19,
                            bottom: 29,
                          ),
                          child: Center(
                            child: Text(
                              "< Go Back ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallGreenA700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  onTapViewupcoming(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  onTapColumnmodel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapTxtComparewithalto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  onTapViewprice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }

  onTapGetnewoffers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPopUpScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }

  onTapRowmaskgroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen2);
  }

  onTapTxtViewpricebreaku(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }

  onTapColumnmarutialt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapColumnmarutialt1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapColumnmarutialt2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapTxtComparewithalto1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  onTapTxtComparewithalto2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  onTapVersion(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailVersionPageScreen);
  }
}

void bottomSheets(context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
    ),
    isScrollControlled: true,
    constraints: BoxConstraints.tight(
      Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * .9),
    ),
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(left: 7, top: 9),
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
                                  width: getHorizontalSize(207),
                                  child: Divider(
                                    height: getVerticalSize(6),
                                    thickness: getVerticalSize(6),
                                    color: appTheme.blueGray100,
                                    endIndent: getHorizontalSize(40),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(top: 54),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              width: getHorizontalSize(150),
                                              child: Divider(
                                                height: getVerticalSize(2),
                                                thickness: getVerticalSize(2),
                                                color: appTheme.blueGray100,
                                                endIndent:
                                                getHorizontalSize(40),
                                              ),
                                            ),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle19,
                                                height: getVerticalSize(86),
                                                width: getHorizontalSize(142)),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                              left: 20, top: 6, bottom: 32),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text("On road price (GST)",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmall12_2),
                                                Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Text("Alto K10",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900_1),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                ),
                              ]),
                        ),
                        CustomImageView(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          imagePath: ImageConstant.imgImage70,
                          height: getSize(20),
                          width: getSize(20),
                          margin: getMargin(
                              left: 43, top: 11, bottom: 115, right: 20),
                        )
                      ]),
                ),
                Padding(
                  padding: getPadding(left: 18, top: 96, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(bottom: 2),
                          child: Text("Ex-Showroom Price",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmall12_2),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage58,
                          height: getSize(20),
                          width: getSize(20),
                          margin: getMargin(left: 13, bottom: 1),
                        ),
                        Spacer(),
                        Text("₹6.96 Lakh",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1),
                      ]),
                ),
                Padding(
                  padding: getPadding(left: 18, top: 12, right: 17),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(bottom: 2),
                            child: Text("Registration",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall12_2)),
                        Text("₹52,089",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1),
                      ]),
                ),
                Container(
                  height: getVerticalSize(22),
                  width: getHorizontalSize(355),
                  margin: getMargin(top: 13),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage58,
                        height: getSize(20),
                        width: getSize(20),
                        alignment: Alignment.topLeft,
                        margin: getMargin(left: 72)),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(bottom: 3),
                              child: Text("Insurance",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall12_2),
                            ),
                            Text("₹52,089",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900_1),
                          ]),
                    ),
                  ]),
                ),
                Padding(
                  padding: getPadding(left: 18, top: 15, right: 17),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(bottom: 2),
                            child: Text("Other Charges",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall12_2)),
                        Text("₹2,089",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1),
                      ]),
                ),
                Padding(
                  padding: getPadding(top: 14),
                  child: Divider(
                    height: getVerticalSize(1),
                    thickness: getVerticalSize(1),
                    color: appTheme.black900,
                    indent: getHorizontalSize(16),
                    endIndent: getHorizontalSize(18),
                  ),
                ),
                Container(
                  height: getVerticalSize(22),
                  width: getHorizontalSize(355),
                  margin: getMargin(top: 11),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(bottom: 3),
                                child: Text("Total On Road Price in Noida",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2)),
                            Text("₹2,089",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900_1),
                          ]),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage58,
                      height: getSize(20),
                      width: getSize(20),
                      alignment: Alignment.topRight,
                      margin: getMargin(right: 156),
                    ),
                  ]),
                ),
                CustomOutlinedButton(
                    text: "Show more price breakup >",
                    margin: getMargin(left: 17, top: 25, right: 20),
                    buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(45)))),
                    buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    child: CustomElevatedButton(
                        text: "Get Price Details on Whatsapp",
                        margin: getMargin(left: 15, right: 21),
                        leftIcon: Container(
                            margin: getMargin(right: 8),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgLogoswhatsappicon,
                                height: getSize(18),
                                width: getSize(18))),
                        buttonStyle:
                        CustomButtonStyles.outlineBlack900.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              double.maxFinite,
                              getVerticalSize(36),
                            ),
                          ),
                        ),
                        buttonTextStyle: CustomTextStyles.bodySmall12_2),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 17, right: 18),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: getPadding(
                              left: 16, top: 11, right: 16, bottom: 11),
                          decoration: AppDecoration.fill2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(bottom: 3),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text("EMI  ₹11,000/month",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1),
                                        Padding(
                                          padding: getPadding(top: 8),
                                          child: Text("EMI Calculator",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallBlueA700),
                                        ),
                                      ]),
                                ),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage58,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(left: 8, bottom: 29)),
                                CustomOutlinedButton(
                                    text: "Get EMI Offers",
                                    margin:
                                    getMargin(left: 41, top: 7, bottom: 11),
                                    buttonStyle: CustomButtonStyles
                                        .outlineGreenA700
                                        .copyWith(
                                      fixedSize:
                                      MaterialStateProperty.all<Size>(
                                        Size(
                                          getHorizontalSize(115),
                                          getVerticalSize(31),
                                        ),
                                      ),
                                    ),
                                    buttonTextStyle:
                                    CustomTextStyles.bodySmallGreenA70012),
                              ]),
                        ),
                      ]),
                ),
                Padding(
                  padding: getPadding(left: 17, right: 18),
                  child: Container(
                    margin: getMargin(top: 34),
                    padding: getPadding(top: 14, bottom: 14),
                    decoration: AppDecoration.fill2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup50x50,
                              height: getSize(50),
                              width: getSize(50),
                              margin: getMargin(top: 3, bottom: 13)),
                          Padding(
                            padding: getPadding(bottom: 15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Need a Car Loan?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlack900_1),
                                  Padding(
                                    padding: getPadding(top: 12),
                                    child: Text(
                                        "Apply to get Instant Pre-qualified Offers",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                        CustomTextStyles.bodySmallBlueA700),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: AppDecoration.outline5.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: getPadding(left: 15, top: 20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgMaskgroup1,
                                  height: getSize(40),
                                  width: getSize(40)),
                              Padding(
                                padding:
                                getPadding(left: 17, top: 10, bottom: 9),
                                child: Text("Exclusive Offers",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    CustomTextStyles.titleSmallBlack900_1),
                              ),
                            ]),
                          ),
                          Padding(
                              padding: getPadding(left: 20, top: 18),
                              child: Text(
                                  "Benefits of Authorised Buying Experience",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyMediumGray800)),
                          Padding(
                            padding: getPadding(left: 20, top: 20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage64,
                                  height: getVerticalSize(18),
                                  width: getHorizontalSize(26),
                                  margin: getMargin(bottom: 2)),
                              Padding(
                                  padding: getPadding(left: 16, bottom: 2),
                                  child: Text("Doorstep Demo",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage65,
                                  height: getSize(20),
                                  width: getSize(20),
                                  margin: getMargin(left: 37)),
                              Padding(
                                padding: getPadding(left: 12, bottom: 2),
                                child: Text("Offers & Discounts",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2),
                              ),
                            ]),
                          ),
                          Padding(
                              padding: getPadding(left: 22, top: 18),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage66,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(left: 19, top: 2),
                                    child: Text("Lowest EMI",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2)),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage67,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(
                                        left: 12, bottom: 2, right: 32),
                                    child: Text("Exchange Benefits",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2))
                              ])),
                          Container(
                            height: getVerticalSize(45),
                            width: getHorizontalSize(315),
                            margin: getMargin(top: 24, bottom: 64, left: 20),
                            child:
                            Stack(alignment: Alignment.center, children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(45),
                                  width: getHorizontalSize(314),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4)),
                                    border: Border.all(
                                      color: appTheme.blueA700,
                                      width: getHorizontalSize(1),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Get the Best deals",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleSmallBlueA700_1))
                            ]),
                          ),
                          Container(
                            // width: getHorizontalSize(374),
                            padding: getPadding(top: 12, bottom: 50),
                            decoration: AppDecoration.fill2.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 22),
                                      child: Text(
                                          "To avail these offers, benefits please contact, ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallGray80012)),
                                  Padding(
                                    padding: getPadding(left: 19, top: 12),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPngegg1,
                                          height: getVerticalSize(27),
                                          width: getHorizontalSize(29)),
                                      Padding(
                                        padding: getPadding(left: 13, top: 6),
                                        child: Text("Maruti Suzuki",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 25),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskgroup20x20,
                                              height: getSize(20),
                                              width: getSize(20)),
                                          Padding(
                                            padding:
                                            getPadding(left: 17, bottom: 2),
                                            child: Text("H-5, Sector 63, Noida",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallGray80012),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                              ImageConstant.imgMaskgroup2,
                                              height: getSize(20),
                                              width: getSize(20)),
                                          Padding(
                                            padding: getPadding(
                                                left: 17, top: 1, bottom: 1),
                                            child: Text("Call Now",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBlueA700_1),
                                          ),
                                        ]),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ),
                Padding(
                    padding: getPadding(
                      right: 38,
                      top: 55,
                    ),
                    child: Text("Alto K10 Price In Cities Near Noida",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge)),
                Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 19),
                    padding: getPadding(left: 19, top: 5, right: 19, bottom: 5),
                    decoration: AppDecoration.fill,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: getPadding(top: 1),
                              child: Text("City",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding: getPadding(right: 56, bottom: 2),
                              child: Text("On-Road Price",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold))
                        ])),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(left: 19, top: 18, right: 21),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("New Delhi",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold),
                              Text("₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1)
                            ]))),
                Container(
                    height: getVerticalSize(1),
                    width: double.maxFinite,
                    margin: getMargin(top: 17),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800))),
                    ])),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(left: 19, top: 18, right: 21),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Gaziabad",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold),
                              Text("₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1)
                            ]))),
                Container(
                    height: getVerticalSize(1),
                    width: double.maxFinite,
                    margin: getMargin(top: 17),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800))),
                    ])),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(left: 19, top: 18, right: 21),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Jaipur",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold),
                              Text("₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1)
                            ]))),
                Container(
                    height: getVerticalSize(1),
                    width: double.maxFinite,
                    margin: getMargin(top: 17),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800))),
                    ])),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(left: 19, top: 18, right: 21),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Lucknow",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                              CustomTextStyles.titleSmallBlueA700SemiBold),
                          Text("₹6.96 Lakh onwards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1)
                        ]),
                  ),
                ),
                Container(
                  height: getVerticalSize(1),
                  width: double.maxFinite,
                  margin: getMargin(top: 17),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: appTheme.gray800),
                      ),
                    ),
                  ]),
                ),
                CustomOutlinedButton(
                    text: "View More Cities",
                    margin: getMargin(left: 16, top: 20, right: 21),
                    buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(45)))),
                    buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1,
                    alignment: Alignment.center),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Column(children: [
                      Container(
                        width: double.infinity,
                        decoration: AppDecoration.fill2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text("Alto K10 Waiting Period",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: getHorizontalSize(172),
                                padding:
                                getPadding(top: 16, bottom: 16, left: 20),
                                decoration: AppDecoration.txtOutline1,
                                child: Text("EX 1.2 MT",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    CustomTextStyles.bodySmallGray80012)),
                            Container(
                              width: getHorizontalSize(176),
                              padding:
                              getPadding(top: 16, bottom: 16, left: 20),
                              decoration: AppDecoration.txtOutline1,
                              child: Text("12-16 Weeks",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallGray80012),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: getHorizontalSize(172),
                                padding:
                                getPadding(top: 16, bottom: 16, left: 20),
                                decoration: AppDecoration.txtOutline1,
                                child: Text("EX (0) 1.2 MT",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    CustomTextStyles.bodySmallGray80012)),
                            Container(
                              width: getHorizontalSize(176),
                              padding:
                              getPadding(top: 16, bottom: 16, left: 20),
                              decoration: AppDecoration.txtOutline1,
                              child: Text("7-9 Weeks",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallGray80012),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: getHorizontalSize(172),
                                padding:
                                getPadding(top: 16, bottom: 16, left: 20),
                                decoration: AppDecoration.txtOutline1,
                                child: Text("STD",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    CustomTextStyles.bodySmallGray80012)),
                            Container(
                              width: getHorizontalSize(176),
                              padding:
                              getPadding(top: 16, bottom: 16, left: 20),
                              decoration: AppDecoration.txtOutline1,
                              child: Text("10-12 Weeks",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallGray80012),
                            ),
                          ]),
                    ]),
                  ),
                ),
                CustomOutlinedButton(
                    text: "View More",
                    margin: getMargin(left: 16, top: 20, right: 21),
                    buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(45)))),
                    buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1,
                    alignment: Alignment.center),
                Padding(
                  padding: getPadding(
                    right: 158,
                    top: 55,
                    bottom: 10,
                  ),
                  child: Text("Alto K10 Fuel Cost",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleLarge),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(left: 18, top: 16),
                    child: Text("VERSION*",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallGray800_1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("STD",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(left: 18, top: 16),
                    child: Text("FEUL PRICE PER LITRE",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallGray800_1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("STD",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(left: 18, top: 16),
                    child: Text("KM DRIVEN PER MONTH",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallGray800_1),
                  ),
                ),
                CustomImageView(
                    imagePath: ImageConstant.imgComponent2,
                    height: getVerticalSize(24),
                    width: getHorizontalSize(353),
                    margin: getMargin(top: 17)),
                Padding(
                    padding: getPadding(left: 18, top: 3, right: 18),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("0 KM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall),
                          Text("5000 KM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: theme.textTheme.bodySmall)
                        ])),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("4567",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                          Text("KM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 17, right: 18, bottom: 30),
                  child: Container(
                    margin: getMargin(top: 34),
                    padding: getPadding(top: 14, bottom: 14),
                    decoration: AppDecoration.fill2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(bottom: 15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Monthly Fuel Cost Alto K10 is :",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlack900_1),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Row(
                                      children: [
                                        Text("₹6,500",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage58,
                                          height: getSize(20),
                                          width: getSize(20),
                                          alignment: Alignment.centerLeft,
                                          margin: getMargin(
                                            left: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage72,
                              height: getSize(50),
                              width: getSize(50),
                              margin: getMargin(top: 3, bottom: 13)),
                        ]),
                  ),
                ),
                Container(
                  height: 70,
                  decoration: AppDecoration.fill2
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                  child: Row(
                    children: [
                      CustomOutlinedButton(
                        text: "Get New Offers",
                        margin: getMargin(left: 41, top: 7, bottom: 11),
                        buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              getHorizontalSize(135),
                              getVerticalSize(41),
                            ),
                          ),
                        ),
                        buttonTextStyle: TextStyle(
                          color: Colors.white, // Set the text color to white
                          fontSize:
                          12, // You might need to adjust this according to your style
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                      height: getVerticalSize(
                                        32,
                                      ),
                                      title: Padding(
                                        padding: getPadding(
                                          left: 32,
                                        ),
                                        child: Text(
                                          "Fill your Details",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBlack900SemiBold,
                                        ),
                                      ),
                                      actions: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: AppbarImage(
                                            height: getSize(
                                              15,
                                            ),
                                            width: getSize(
                                              15,
                                            ),
                                            imagePath: ImageConstant.imgImage70,
                                            margin: getMargin(
                                              left: 21,
                                              right: 21,
                                              bottom: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    CustomTextFormField(
                                      // controller: nameController,
                                      margin: getMargin(
                                        left: 32,
                                        top: 17,
                                        right: 28,
                                      ),
                                      contentPadding: getPadding(
                                        left: 12,
                                        top: 9,
                                        right: 12,
                                        bottom: 9,
                                      ),
                                      textStyle:
                                      CustomTextStyles.bodySmallGray80012,
                                      hintText: "Enter your Name",
                                      hintStyle:
                                      CustomTextStyles.bodySmallGray80012,
                                      textInputAction: TextInputAction.next,
                                      filled: true,
                                      fillColor: appTheme.blueGray100,
                                      defaultBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      enabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      focusedBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                    ),
                                    CustomTextFormField(
                                      // controller: mobilenumberController,
                                      margin: getMargin(
                                        left: 32,
                                        top: 15,
                                        right: 28,
                                      ),
                                      contentPadding: getPadding(
                                        left: 12,
                                        top: 9,
                                        right: 12,
                                        bottom: 9,
                                      ),
                                      textStyle:
                                      CustomTextStyles.bodySmallGray80012,
                                      hintText: "Enter your Mobile Number",
                                      hintStyle:
                                      CustomTextStyles.bodySmallGray80012,
                                      textInputType: TextInputType.phone,
                                      filled: true,
                                      fillColor: appTheme.blueGray100,
                                      defaultBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      enabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      focusedBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                    ),
                                    CustomOutlinedButton(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      text: "SUBMIT",
                                      margin: getMargin(
                                        left: 33,
                                        top: 26,
                                        right: 27,
                                      ),
                                      buttonStyle: CustomButtonStyles
                                          .outlinePrimary
                                          .copyWith(
                                          fixedSize: MaterialStateProperty
                                              .all<Size>(Size(
                                            double.maxFinite,
                                            getVerticalSize(
                                              45,
                                            ),
                                          ))),
                                      buttonTextStyle:
                                      CustomTextStyles.titleSmallPrimary,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                          top: 19,
                                          bottom: 29,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "< Go Back ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallGreenA700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      CustomOutlinedButton(
                        text: "Contact Dealer",
                        margin: getMargin(left: 41, top: 7, bottom: 11),
                        buttonStyle:
                        CustomButtonStyles.outlineGreenA700.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              getHorizontalSize(135),
                              getVerticalSize(41),
                            ),
                          ),
                        ),
                        buttonTextStyle: CustomTextStyles.bodySmallGreenA70012,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: CustomAppBar(
                                        height: getVerticalSize(
                                          32,
                                        ),
                                        title: Padding(
                                          padding: getPadding(
                                            left: 32,
                                          ),
                                          child: Text(
                                            "Fill your Details",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeBlack900SemiBold,
                                          ),
                                        ),
                                        actions: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: AppbarImage(
                                              height: getSize(
                                                15,
                                              ),
                                              width: getSize(
                                                15,
                                              ),
                                              imagePath:
                                              ImageConstant.imgImage70,
                                              margin: getMargin(
                                                left: 21,
                                                right: 21,
                                                bottom: 17,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomTextFormField(
                                      // controller: nameController,
                                      margin: getMargin(
                                        left: 32,
                                        top: 17,
                                        right: 28,
                                      ),
                                      contentPadding: getPadding(
                                        left: 12,
                                        top: 9,
                                        right: 12,
                                        bottom: 9,
                                      ),
                                      textStyle:
                                      CustomTextStyles.bodySmallGray80012,
                                      hintText: "Enter your Name",
                                      hintStyle:
                                      CustomTextStyles.bodySmallGray80012,
                                      textInputAction: TextInputAction.next,
                                      filled: true,
                                      fillColor: appTheme.blueGray100,
                                      defaultBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      enabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      focusedBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                    ),
                                    CustomTextFormField(
                                      // controller: mobilenumberController,
                                      margin: getMargin(
                                        left: 32,
                                        top: 15,
                                        right: 28,
                                      ),
                                      contentPadding: getPadding(
                                        left: 12,
                                        top: 9,
                                        right: 12,
                                        bottom: 9,
                                      ),
                                      textStyle:
                                      CustomTextStyles.bodySmallGray80012,
                                      hintText: "Enter your Mobile Number",
                                      hintStyle:
                                      CustomTextStyles.bodySmallGray80012,
                                      textInputType: TextInputType.phone,
                                      filled: true,
                                      fillColor: appTheme.blueGray100,
                                      defaultBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      enabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      focusedBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                      disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineGray800TL4,
                                    ),
                                    CustomOutlinedButton(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      text: "SUBMIT",
                                      margin: getMargin(
                                        left: 33,
                                        top: 26,
                                        right: 27,
                                      ),
                                      buttonStyle: CustomButtonStyles
                                          .outlinePrimary
                                          .copyWith(
                                          fixedSize: MaterialStateProperty
                                              .all<Size>(Size(
                                            double.maxFinite,
                                            getVerticalSize(
                                              45,
                                            ),
                                          ))),
                                      buttonTextStyle:
                                      CustomTextStyles.titleSmallPrimary,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 19,
                                        bottom: 29,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "< Go Back ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallGreenA700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    ),
  );
}
