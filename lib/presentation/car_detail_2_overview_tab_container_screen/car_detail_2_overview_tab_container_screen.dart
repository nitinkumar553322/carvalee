import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/car_detail_2_overview_page/car_detail_2_overview_page.dart';
import 'package:carwalee/presentation/car_detail_3_features_page/car_detail_3_features_page.dart';
import 'package:carwalee/presentation/car_detail_4_specifications_page/car_detail_4_specifications_page.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class CarDetail2OverviewTabContainerScreen extends StatefulWidget {
  const CarDetail2OverviewTabContainerScreen({Key? key}) : super(key: key);

  @override
  CarDetail2OverviewTabContainerScreenState createState() =>
      CarDetail2OverviewTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class CarDetail2OverviewTabContainerScreenState
    extends State<CarDetail2OverviewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
            height: getVerticalSize(71),
            title: Row(children: [
              Padding(
                  padding: getPadding(top: 36, bottom: 14),
                  child: Text("Colours",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallRedA700)),
              AppbarSubtitle5(
                  text: "Full Details",
                  margin: getMargin(left: 34, top: 36, bottom: 14)),
              Container(
                  margin: getMargin(left: 272),
                  padding: getPadding(left: 9, top: 4, right: 9, bottom: 4),
                  decoration: BoxDecoration(color: theme.colorScheme.primary),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 7),
                            child: Row(children: [
                              AppbarImage(
                                  height: getSize(24),
                                  width: getSize(24),
                                  svgPath: ImageConstant.imgArrowleft,
                                  onTap: () {
                                    onTapArrowleft(context);
                                  }),
                              AppbarImage(
                                  height: getSize(24),
                                  width: getSize(24),
                                  svgPath: ImageConstant.imgFavorite,
                                  margin: getMargin(left: 274)),
                              AppbarImage(
                                  height: getSize(24),
                                  width: getSize(24),
                                  svgPath: ImageConstant.imgBasilshareoutline,
                                  margin: getMargin(left: 12))
                            ])),
                        Padding(
                            padding: getPadding(
                                left: 27, top: 9, right: 173, bottom: 8),
                            child: Row(children: [
                              AppbarSubtitle5(text: "Popular Car"),
                              AppbarSubtitle5(
                                  text: "Images", margin: getMargin(left: 26))
                            ]))
                      ]))
            ]),
            actions: [
              AppbarSubtitle5(
                  text: "Upcoming Launches",
                  margin: getMargin(left: 2, top: 36, right: 2, bottom: 13))
            ],
            styleType: Style.bgFill),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 1),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: getVerticalSize(253),
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                height: getVerticalSize(238),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle19,
                                          height: getVerticalSize(238),
                                          width: getHorizontalSize(390),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: double.maxFinite,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgGroup37926,
                                                        height:
                                                            getVerticalSize(45),
                                                        width:
                                                            getHorizontalSize(
                                                                390),
                                                        margin: getMargin(
                                                            top: 100,
                                                            bottom: 93)),
                                                    Spacer(flex: 16),
                                                    Spacer(flex: 33),
                                                    Spacer(flex: 49),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle20,
                                                        height: getVerticalSize(
                                                            238),
                                                        width:
                                                            getHorizontalSize(
                                                                1),
                                                        margin: getMargin(
                                                            left: 16)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle22,
                                                        height: getVerticalSize(
                                                            238),
                                                        width:
                                                            getHorizontalSize(
                                                                1)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle21,
                                                        height: getVerticalSize(
                                                            238),
                                                        width:
                                                            getHorizontalSize(
                                                                1)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle24,
                                                        height: getVerticalSize(
                                                            238),
                                                        width:
                                                            getHorizontalSize(
                                                                1))
                                                  ])))
                                    ]))),
                        Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapRowmaskgroup(context);
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 249, right: 23, bottom: 225),
                                    padding: getPadding(
                                        left: 9, top: 3, right: 9, bottom: 3),
                                    decoration: AppDecoration.outline2.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaskgroup,
                                              height: getSize(21),
                                              width: getSize(21),
                                              margin: getMargin(top: 1)),
                                          Padding(
                                              padding: getPadding(left: 7),
                                              child: Text("COMPARE",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallBlueA700))
                                        ]))))
                      ])),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMaskgroup40x40,
                                    height: getSize(40),
                                    width: getSize(40)),
                                Padding(
                                    padding: getPadding(
                                        left: 13, top: 12, bottom: 6),
                                    child: Text("VIEW 360° FULL SCREEN",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBlueA700
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 16, top: 18, right: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Alto K10 Std",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleLargeBlack900),
                                Padding(
                                    padding: getPadding(top: 8, bottom: 6),
                                    child: Text("View Images",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelMediumBlueA700
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)))
                              ]))),
                  Padding(
                      padding: getPadding(left: 16, top: 5),
                      child: Row(children: [
                        Padding(
                            padding: getPadding(bottom: 1),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle239,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(5))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle240,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        margin: getMargin(left: 9)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle241,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        margin: getMargin(left: 9)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle242,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        margin: getMargin(left: 9))
                                  ]),
                                  Padding(
                                      padding: getPadding(top: 4),
                                      child: Row(children: [
                                        Text("Rs. 4.57L",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleLargeBlack900),
                                        Padding(
                                            padding: getPadding(
                                                left: 8, top: 7, bottom: 4),
                                            child: Text("Onwards",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2))
                                      ])),
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Row(children: [
                                        Text("On road price (GST)",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall12_2),
                                        Padding(
                                            padding: getPadding(left: 7),
                                            child: Text("Noida",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBlueA700Bold))
                                      ]))
                                ])),
                        Container(
                            height: getVerticalSize(38),
                            width: getHorizontalSize(142),
                            margin: getMargin(left: 4, top: 48),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgMdilocation,
                                      height: getSize(18),
                                      width: getSize(18),
                                      alignment: Alignment.bottomLeft),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text("View Price Breakup",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallBlueA700))
                                ]))
                      ])),
                  Padding(
                      padding: getPadding(left: 16),
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
                            padding: getPadding(
                                left: 8, top: 1, right: 8, bottom: 1),
                            decoration: AppDecoration.txtOutline.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder2),
                            child: Text("86 Reviews",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelMediumGray80001
                                    .copyWith(
                                        letterSpacing: getHorizontalSize(0.2))))
                      ])),
                  Padding(
                      padding: getPadding(left: 16, top: 2),
                      child: Text("Get EMI assistance",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlueA700)),
                  Container(
                      margin: getMargin(top: 8),
                      padding: getPadding(left: 16, right: 16),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgGroup9),
                              fit: BoxFit.cover)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: getPadding(top: 42),
                                child: Text("Colors (10)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall)),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup87,
                                height: getVerticalSize(40),
                                width: getHorizontalSize(352),
                                margin: getMargin(left: 6, top: 24))
                          ])),
                  Container(
                      height: getVerticalSize(137),
                      width: double.maxFinite,
                      margin: getMargin(top: 27),
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: getPadding(
                                    left: 15, top: 40, right: 15, bottom: 40),
                                decoration: AppDecoration.fill1,
                                child: Padding(
                                    padding: getPadding(bottom: 34),
                                    child: Text("Full Details",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)))),
                        Container(
                            height: getVerticalSize(44),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5))),
                            child: TabBar(
                                controller: tabviewController,
                                labelColor: theme.colorScheme.primary,
                                labelStyle: TextStyle(),
                                unselectedLabelColor: appTheme.gray800,
                                unselectedLabelStyle: TextStyle(),
                                indicatorPadding: getPadding(all: 6.5),
                                indicator: BoxDecoration(
                                    color: appTheme.blueA700,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(5))),
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
                                ]))
                      ])),
                  SizedBox(
                    height: getVerticalSize(3041),
                    child: TabBarView(controller: tabviewController, children: [
                      CarDetail2OverviewPage(),
                      CarDetail3FeaturesPage(),
                      CarDetail4SpecificationsPage()
                    ]),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapRowmaskgroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }
}
