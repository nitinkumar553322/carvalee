import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/car_detail_page_screen/three_d_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../car_detail_page_screen/widgets/list3_item_widget.dart';
import '../car_detail_page_screen/widgets/list_one3_item_widget.dart';
import '../compare_navbar_screen/compaire_navbar2.dart';
import '../homapage_screen/widgets/list_two_item_widget.dart';
import 'car_detail_page_screen.dart';
import 'image_viewer.dart';

// ignore_for_file: must_be_immutable
class CarDetailVersionPageScreen extends StatefulWidget {
  CarDetailVersionPageScreen({Key? key}) : super(key: key);

  @override
  State<CarDetailVersionPageScreen> createState() =>
      _CarDetailVersionPageScreenState();
}

class _CarDetailVersionPageScreenState extends State<CarDetailVersionPageScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

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
  onTapArrowleft25(BuildContext context) {
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: AppbarImage(
            height: getSize(24),
            width: getSize(24),
            svgPath: ImageConstant.imgArrowleft,
            margin: getMargin(left: 16, top: 12, bottom: 12),
            onTap: () {
              onTapArrowleft25(context);
            }),
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
              height: 15,
              child: ListView(
                  padding: getPadding(left: 15, right: 5),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
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
                    itemCount: imagePaths.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Hero(
                        tag: 'image_$index',
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThreeDImageView()));
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Maruti Suzuki Alto K10",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleLargeBlack900),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ImageViewer(), // Open the image viewer
                          ),
                        );
                      },
                      child: Padding(
                        padding: getPadding(top: 6, bottom: 2),
                        child: Text(
                          "View Images",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlueA700
                              .copyWith(decoration: TextDecoration.underline),
                        ),
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
                padding: getPadding(right: 280, top: 50),
                child: Text("Full Details",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),

            Container(
                height: getVerticalSize(45),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(getHorizontalSize(5))),
                child: TabBar(
                    controller: tabviewController,
                    labelColor: theme.colorScheme.primary,
                    labelStyle: TextStyle(),
                    unselectedLabelColor: appTheme.gray800,
                    unselectedLabelStyle: TextStyle(),
                    indicatorPadding: getPadding(all: 6),
                    indicator: BoxDecoration(
                        color: appTheme.blueA700,
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(5))),
                    tabs: [
                      Tab(
                          child: Text("Overview",
                              overflow: TextOverflow.ellipsis)),
                      Tab(
                          child: Text("Features",
                              overflow: TextOverflow.ellipsis)),
                      Tab(
                          child: Text("Specifications",
                              overflow: TextOverflow.ellipsis))
                    ])),
            SizedBox(
              height: getVerticalSize(400),
              child: TabBarView(controller: tabviewController, children: [
                SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(top: 26),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 18, top: 5, right: 18, bottom: 5),
                                    decoration: AppDecoration.txtFill,
                                    child: Text("Overview",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900SemiBold)),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 15, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Length",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("170 kmph",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Width",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("6 seconds-",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Height",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("45 km/l-",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 9, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Seating Capacity",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text(
                                              "1197 cc, Cylinder Inline, 4 Valves",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlack900_1)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 9, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Fuel Type",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("1.2 Kappa Petrol",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Max Power (bhp@rpm)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("Petrol",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Max Torque (Nm@rpm)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("82 bhp @ 6000 rpm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 8, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Mileage (ARAI)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("113.8 Nm @ 4000 rpm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Alternate Fuel",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("19.4 km/l",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Drive Train",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("718 km",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Air Conditioner",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("Manual - 5 Gears",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: Text("Power Windows",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text(
                                                  "1197 cc, Cylinder Inline, 4 Valves",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBlack900_1))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 9, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Central Locking",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("1.2 Kappa Petrol",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Anti-Lock Braking System (ABS)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("Petrol",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 9, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Seat Upholstery",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("82 bhp @ 6000 rpm",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 9, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Front Tyres",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          Text("113.8 Nm @ 4000 rpm",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("Rear Tyres",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: Text("19.4 km/l",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                              ]),
                        ),
                      ]),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(top: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 18, top: 6, right: 18, bottom: 6),
                              decoration: AppDecoration.txtFill,
                              child: Text("Safety",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding: getPadding(left: 17, top: 13, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Overspeed Warning",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text(
                                            "Emergency Brake Light Flashing",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Puncture Repair Kit",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 8, right: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("NCAP Rating",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Airbags",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Middle rear three-Point Seatbelt",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Middle Rear Head Rest",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "Tyre Pressure Monitoring Sysem (TPMS)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Child Seat Anchor Points",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Seat Belt Warning",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 18, top: 6, right: 18, bottom: 6),
                              decoration: AppDecoration.txtFill,
                              child: Text("Braking & Traction",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding: getPadding(left: 17, top: 13, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Anti-Lock Braking System (ABS)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "Electronic Brake Force Distribution (EBD)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Brake Assist (BA)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 8, right: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Electronic Stability Program (ESP)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Hill Hold Control",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Traction Control System (TC/TCS)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Hill Descent Control",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 18, top: 6, right: 18, bottom: 6),
                              decoration: AppDecoration.txtFill,
                              child: Text("Locks & Security",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding: getPadding(left: 17, top: 13, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Engine immobilizer",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Central Locking",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Speed Sensing Door Lock",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 8, right: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Child Safety Lock",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 18, top: 5, right: 18, bottom: 5),
                              decoration: AppDecoration.txtFill,
                              child: Text("Comfort & Covenience",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding: getPadding(left: 17, top: 13, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Umbrella Storage In Door",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Air Conditoner",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Front AC",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rear AC",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Third Row AC",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Heater",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text(
                                            "Vanity Mirrors on Sun Visors",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Cabin-Boot Access",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Anti-glare Mirrors",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Parking Assist",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Padding(
                              padding: getPadding(left: 17, top: 11, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Parking Sensors",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              height: getVerticalSize(205),
                              width: double.maxFinite,
                              margin: getMargin(top: 13),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Cruise Control",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ])),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(bottom: 41),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Steering Adjustment ",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(top: 41),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Headlight & Ignition on Reminder",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            "12V Power Outlets",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("1",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 18),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            "Keyless Start/Button Start",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900_1)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ]))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 18, top: 5, right: 18, bottom: 5),
                              decoration: AppDecoration.txtFill,
                              child: Text("Telematics",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding: getPadding(left: 17, top: 13, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Find My Cars",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text(
                                            "Check Vehicle Status Via App",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Geo-Fence",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 8, right: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Emergency Call",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Over the Air (OTA Updates)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Remove AC On/Off Via App",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Remote Car Lock/Unlock Via App",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Remote Sunroof Open/Close Via App",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text(
                                            "Remote Car Light Flashing & Honking Via App",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding:
                                            getPadding(left: 74, bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Alexa Compatibility",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 18, top: 5, right: 18, bottom: 5),
                              decoration: AppDecoration.txtFill,
                              child: Text("Seats & Upholstery",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding: getPadding(left: 17, top: 13, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Driver Seat Adjustments",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              height: getVerticalSize(369),
                              width: double.maxFinite,
                              margin: getMargin(top: 13),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "Front Passenger Seat Adjustments",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge)),
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text("-",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ])),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(top: 123),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Leather wrapped Gear Knob",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(bottom: 41),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Ventilated Seat Type",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(top: 41),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Seat Upholstery",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Driver Armrest",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ])),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Interiors",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ])),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(top: 82),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 8,
                                                          right: 18),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "Leather wrapped Steering Wheel",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge),
                                                            Text("-",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900_1)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(bottom: 82),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "Ventilated  Seats",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge),
                                                            Text("-",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 14),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(bottom: 123),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Rear Passenger Seats Type",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ])))
                                  ])),
                          Container(
                              height: getVerticalSize(1130),
                              width: double.maxFinite,
                              margin: getMargin(top: 12),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: double.maxFinite,
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 5,
                                                      right: 18,
                                                      bottom: 5),
                                                  decoration:
                                                      AppDecoration.txtFill,
                                                  child: Text("Storage",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900SemiBold)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 13,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "Cup Holders",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge)),
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text("-",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "Drive Armrest Storage",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge)),
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text("-",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800)),
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Cooled Glove Box",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800)),
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 8,
                                                      right: 18),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Sunglass holder",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900_1)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800)),
                                              SizedBox(
                                                  height: getVerticalSize(62),
                                                  width: double.maxFinite,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                      width: double
                                                                          .maxFinite,
                                                                      padding: getPadding(
                                                                          left:
                                                                              18,
                                                                          top:
                                                                              6,
                                                                          right:
                                                                              18,
                                                                          bottom:
                                                                              6),
                                                                      decoration:
                                                                          AppDecoration
                                                                              .txtFill,
                                                                      child: Text(
                                                                          "Doors, Windows, Mirrors & Wipers",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              CustomTextStyles.labelLargeBlack900SemiBold)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              17,
                                                                          top:
                                                                              13),
                                                                      child: Text(
                                                                          "Outside Rear View Mirrors Color (ORVMs)",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        right:
                                                                            19),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)))
                                                      ])),
                                              Container(
                                                  height: getVerticalSize(574),
                                                  width: double.maxFinite,
                                                  margin: getMargin(top: 15),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1),
                                                                      color: appTheme
                                                                          .gray800),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              17,
                                                                          top:
                                                                              7,
                                                                          right:
                                                                              19),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text("Scuff Plates",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              14),
                                                                      child: Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            123),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("One Touch Up", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            246),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("Rear Wiper", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            41),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("Rain  sensing Wipers ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            41),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("Power Windows",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  14),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            164),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("Adjustable ORVM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            164),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("Rain Defogger", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            205),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("Exterior Door Handles",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  14),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1),
                                                                      color: appTheme
                                                                          .gray800),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              17,
                                                                          top:
                                                                              7,
                                                                          right:
                                                                              19),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text("Door Pockets",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              14),
                                                                      child: Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            82),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 18),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("One Touch Down", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900_1))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            246),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("Rear Defogger", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            82),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("Exterior Door Handles",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  14),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            205),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("Turn Indicators on ORVM",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  14),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            123),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("Rear Wiper", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ])))
                                                      ]))
                                            ])),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17, right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Interior Colours",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              Container(
                                                  height: getVerticalSize(246),
                                                  width: double.maxFinite,
                                                  margin: getMargin(top: 14),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1),
                                                                      color: appTheme
                                                                          .gray800),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              17,
                                                                          top:
                                                                              7,
                                                                          right:
                                                                              19),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text("Rear Armrest",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              14),
                                                                      child: Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            82),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("Front Seatbacks Pockets",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  14),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            41),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Text("Folding Rear Seat", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                            Padding(
                                                                                padding: getPadding(bottom: 1),
                                                                                child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            41),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 7,
                                                                              right: 19),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("Head rests",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  14),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1),
                                                                      color: appTheme
                                                                          .gray800),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              17,
                                                                          top:
                                                                              7,
                                                                          right:
                                                                              19),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text("Rear head rests",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge)
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              14),
                                                                      child: Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            82),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              appTheme.gray800),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left: 17,
                                                                              top: 8,
                                                                              right: 18),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("Split Rear Seat",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.labelLarge),
                                                                            Text("-",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: CustomTextStyles.labelLargeBlack900_1)
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: appTheme.gray800))
                                                                    ])))
                                                      ]))
                                            ]))
                                  ])),
                          SizedBox(
                              height: getVerticalSize(62),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: double.maxFinite,
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 5,
                                                      right: 18,
                                                      bottom: 5),
                                                  decoration:
                                                      AppDecoration.txtFill,
                                                  child: Text("Exteriors",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900SemiBold)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17, top: 13),
                                                  child: Text(
                                                      "Sunroof / Moonroof",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .labelLarge))
                                            ])),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding: getPadding(right: 19),
                                            child: Text("-",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.labelLarge)))
                                  ])),
                          Container(
                              height: getVerticalSize(205),
                              width: double.maxFinite,
                              margin: getMargin(top: 15),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            "Roof Mounted Antenna",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ])),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(bottom: 41),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Body Kit",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(top: 41),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 7,
                                                          right: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Body Coloured Bumpers",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color:
                                                              appTheme.gray800))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "Rub Strips",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge)),
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text("-",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: appTheme.gray800),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 8,
                                                      right: 18),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            "Chrome Finish Exhaust Pipe",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("-",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900_1)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray800))
                                            ]))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 18, top: 6, right: 18, bottom: 6),
                              decoration: AppDecoration.txtFill,
                              child: Text("Lighting",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding: getPadding(left: 17, top: 13, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Headlights",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Automatic Head Lamps",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Follow me Home Headlamps",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 8, right: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tail Lights ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge),
                                    Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Daytime Running Lights ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Fog Lights",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Ambient Interior Lighting",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Puddle Lamps",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Cabin Lamps",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Lights on Vanity Mirrors",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Rear Reading Lamp",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Glove Box Lamp",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray800),
                          Padding(
                              padding: getPadding(left: 17, top: 7, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Headlight Height Adjuster",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("-",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray800)),
                          Container(
                            height: getVerticalSize(1502),
                            width: double.maxFinite,
                            margin: getMargin(top: 1),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: double.maxFinite,
                                                padding: getPadding(
                                                    left: 18,
                                                    top: 5,
                                                    right: 18,
                                                    bottom: 5),
                                                decoration:
                                                    AppDecoration.txtFill,
                                                child: Text("Instrumentation",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900SemiBold)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 13,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "Instantaneous Consumption",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("Instrument Cluster",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      Text("-",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "Trip Meter",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 8,
                                                    right: 18),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          "Average Fuel Consumption",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      Text("-",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900_1)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "Average Speed",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "Distance to Empty",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("Clock",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      Text("-",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "Low Fuel Level Warning",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "Door Ajar Warning",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "Adjustable Cluster Brightness",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("Gear Indicator",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      Text("-",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("Shift Indicator",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      Text("-",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          "Headlight Up Display (HUD)",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      Text("-",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800)),
                                            Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray800),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 7,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("Tachometer",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      Text("-",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800))
                                          ])),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: getPadding(bottom: 200),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width: double.maxFinite,
                                                    padding: getPadding(
                                                        left: 18,
                                                        top: 6,
                                                        right: 18,
                                                        bottom: 6),
                                                    decoration:
                                                        AppDecoration.txtFill,
                                                    child: Text(
                                                        "Entertainment , Information & Communication",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .labelLargeBlack900SemiBold)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 13,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Smart Connectivity",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Display",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "Touch Screen Size",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 14),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 8,
                                                        right: 18),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "Indigrated Music System",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900_1)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Speakers",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Steering Mounted Controls",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("Voice Command",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 14),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "GPS Navigation System",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Bluetooth Compatibility",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Aux Compatibility",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("AM/FM Radio",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 14),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "USB Compatibility",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Wireless Charger",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Ipod Compatibility",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("Head Unit Size",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 14),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800)),
                                                Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: appTheme.gray800),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "CD Player",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text("-",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: getPadding(bottom: 136),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width: double.maxFinite,
                                                    padding: getPadding(
                                                        left: 18,
                                                        top: 6,
                                                        right: 18,
                                                        bottom: 6),
                                                    decoration:
                                                        AppDecoration.txtFill,
                                                    child: Text(
                                                        "Manufacturer Warranty",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .labelLargeBlack900SemiBold)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17, top: 15),
                                                    child: Text(
                                                        "Battery Warranty Years",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .labelLarge))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: getVerticalSize(73),
                                          width: double.maxFinite,
                                          margin: getMargin(bottom: 82),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 32),
                                                        child: SizedBox(
                                                            width: double
                                                                .maxFinite,
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          right:
                                                                              19),
                                                                  child: Text(
                                                                      "-",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 17,
                                                                      top: 20,
                                                                      right:
                                                                          19),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        "Batery Warranty (Kilometres)",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge),
                                                                    Text("-",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge)
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 14),
                                                              child: Divider(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1),
                                                                  thickness:
                                                                      getVerticalSize(
                                                                          1),
                                                                  color: appTheme
                                                                      .gray800))
                                                        ]))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: getPadding(bottom: 41),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 17,
                                                        top: 7,
                                                        right: 19),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "Warranty (Years)",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          Text("-",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 14),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800))
                                              ]))),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 17, top: 7, right: 18),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Warranty (Kilometres)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .labelLarge),
                                                  Text("-",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900_1)
                                                ])),
                                        Padding(
                                          padding: getPadding(top: 14),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: appTheme.gray800),
                                        )
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(top: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 18, top: 6, right: 18, bottom: 6),
                                    decoration: AppDecoration.txtFill,
                                    child: Text("Engine & Transmission",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900Bold)),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 15, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Top Speed",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("170 kmph",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Acceleration ( 0-100 )",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("6 seconds-",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("City Mileage (Tested)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("45 km/l-",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 8, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Highway Mileage",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text(
                                              "1197 cc, Cylinder Inline, 4 Valves",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlack900Bold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 8, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Range (Tested)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("1.2 Kappa Petrol",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Engine",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Petrol",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 8, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Engine Type",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("82 bhp @ 6000 rpm",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 9, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Fuel Type",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("113.8 Nm @ 4000 rpm",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Max Power (bhp@rpm)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("19.4 km/l",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Max Torque (Nm@rpm)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("718 km",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Performance on Alternate Fuel",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("Petrol",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 8, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Max Engine Performance",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("82 bhp @ 6000 rpm",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text(
                                                  "Max Motor Performance",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("113.8 Nm @ 4000 rpm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Mileage (ARAI)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("19.4 km/l",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Driving Range",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("718 km",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Drivetrain",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("Petrol",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Transmission",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("82 bhp @ 6000 rpm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Emission Standard",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("113.8 Nm @ 4000 rpm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("TurboCharger/Supercharger",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("19.4 km/l",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Battery",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("718 km",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Battery Charging",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Petrol",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Electric Motor",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("82 bhp @ 6000 rpm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Others",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("113.8 Nm @ 4000 rpm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Alternate Fuel",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("19.4 km/l",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 18, top: 6, right: 18, bottom: 6),
                                    decoration: AppDecoration.txtFill,
                                    child: Text("Dimensions & Weight",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900Bold)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 8, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Length",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("3815 mm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Width",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("1710 mm",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Height",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("1631 mm",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Wheel Base",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("2450 mm",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Ground Clearance",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("-",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Kerb Weight",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 12),
                                    padding: getPadding(
                                        left: 18, top: 6, right: 18, bottom: 6),
                                    decoration: AppDecoration.txtFill,
                                    child: Text("Capacity",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900Bold)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 37, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Doors",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("5 Doors",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Seating Capacity",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("5 Person",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("No. of Seating Rows",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("2 Rows",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("BootSpace",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: Text("391 litres",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Fuel Tank Capacity",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("37 litres",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 18, top: 6, right: 18, bottom: 6),
                                    decoration: AppDecoration.txtFill,
                                    child: Text(
                                        "Suspensions, Brakes, Steering & Tyres",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900Bold)),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 13, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Four Wheel Steering",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Front Suspension",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("McPherson Strut",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 8, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rear Suspension",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("Coupled Torsion Beam Axle",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Front Brake Type",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Disc",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Rear Brake Type",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Drum",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Minimum Turning Radius",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Steering Type",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text(
                                                  "Power assisted ( Electric )",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Wheels",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold),
                                          Text("Steel Rims",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBold)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Spare Wheels",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Steel",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Front Tyres",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("165 /70 R14",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray800)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.gray800),
                                Padding(
                                  padding:
                                      getPadding(left: 17, top: 7, right: 21),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("Rear Tyres",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBold)),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("165 / 70 R14",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBold))
                                      ]),
                                ),
                              ]),
                        ),
                      ]),
                ),
              ]),
            ),
            // DefaultTabController(
            //   length: 3,
            //   child: Container(
            //     height: 500, // Example height
            //     color: Colors.grey[300], // Example background color
            //     child: Column(
            //       children: [
            //         TabBar(
            //           tabs: [
            //             Tab(text: 'Tab 1'),
            //             Tab(text: 'Tab 2'),
            //             Tab(text: 'Tab 3'),
            //           ],
            //         ),
            //         Expanded(
            //           child: TabBarView(
            //             children: [
            //               Center(child: Text('Tab 1 content')),
            //               Center(child: Text('Tab 2 content')),
            //               Center(child: Text('Tab 3 content')),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            Padding(
                padding: getPadding(right: 230, top: 20),
                child: Text(" Other Version (2)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 38.0),
                        child: Text("Maruti Suzuki Alto K10 ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RichText(
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
                      ),
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
                      Padding(
                        padding: const EdgeInsets.only(right: 38.0),
                        child: Text("Maruti Suzuki Alto K10 ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RichText(
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
                      ),
                    ],
                  ),
                  Text("Rs. 8.04 Lalh",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallBlueA700),
                ],
              ),
            ),

            CustomOutlinedButton(
                text: "View More Versions",
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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
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
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
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
                                                  alignment:
                                                  Alignment.bottomLeft,
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
                                                              padding:
                                                              getPadding(
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
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
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
                                                                      top:
                                                                      7),
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
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                          4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
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
                                              style:
                                              theme.textTheme.labelSmall),
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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
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
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
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
                                                  alignment:
                                                  Alignment.bottomLeft,
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
                                                              padding:
                                                              getPadding(
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
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
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
                                                                      top:
                                                                      7),
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
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                          4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
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
                                              style:
                                              theme.textTheme.labelSmall),
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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
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
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
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
                                                  alignment:
                                                  Alignment.bottomLeft,
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
                                                              padding:
                                                              getPadding(
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
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
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
                                                                      top:
                                                                      7),
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
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                          4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
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
                                              style:
                                              theme.textTheme.labelSmall),
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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
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
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
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
                                                  alignment:
                                                  Alignment.bottomLeft,
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
                                                              padding:
                                                              getPadding(
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
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
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
                                                                      top:
                                                                      7),
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
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                          4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
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
                                              style:
                                              theme.textTheme.labelSmall),
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
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,

                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgDownload11,
                                                height: getVerticalSize(168),
                                                width: getHorizontalSize(224)),
                                            SizedBox(width:5),
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgDownload11,
                                                height: getVerticalSize(168),
                                                width: getHorizontalSize(224)),
                                            SizedBox(width:5),
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgDownload11,
                                                height: getVerticalSize(168),
                                                width: getHorizontalSize(224)),
                                            SizedBox(width:5),
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgDownload11,
                                                height: getVerticalSize(168),
                                                width: getHorizontalSize(224)),
                                          ]),
                                    )),
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
                padding: getPadding(top: 38),
                child: Text(" Just Launched cars in india",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: getVerticalSize(197),
                    child: ListView.separated(
                        padding: getPadding(left: 19, top: 12),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: getHorizontalSize(14));
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTwoItemWidget();
                        }))),
            Padding(
                padding: getPadding(top: 40),
                child: Text(" Upcoming launches",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: getVerticalSize(197),
                    child: ListView.separated(
                        padding: getPadding(left: 19, top: 12),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: getHorizontalSize(14));
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTwoItemWidget();
                        }))),
            CustomOutlinedButton(
                text: "View upcoming all Luanches",
                margin: getMargin(left: 21, top: 18, right: 21,bottom: 10),
                buttonStyle: CustomButtonStyles.outlineGreenA400.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(45)))),
                buttonTextStyle: CustomTextStyles.titleSmallGreenA400,
                onTap: () {
                  onTapViewupcoming(context);
                }),

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
            onTapViewupcoming(context);
          },
        ),
      ),
    );
  }

  onTapColumnmodel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapTxtComparewithalto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
    Navigator.pushNamed(context, AppRoutes.nScreen);
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

  onTapViewupcoming(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  onTapTxtComparison(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
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
                          color: Colors.white,
                          // Set the text color to white
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
