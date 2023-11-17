import 'dart:ui';

import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_icon_button.dart';
import '../../widgets/feedback_screen.dart';
import '../compare_navbar_screen/compaire_navbar2.dart';
import '../emi_calculator_screen/emi_calculator_screen.dart';
import '../find_used_cars_form.dart';
import '../iphone_14_four_screen/iphone_14_four_screen.dart';
import '../price_navbar_screen/price_navbar_screen.dart';
import '../sell_cars_one_screen/sell_cars_one_screen.dart';

class UsedCarsPage extends StatefulWidget {
  const UsedCarsPage({Key? key}) : super(key: key);

  @override
  State<UsedCarsPage> createState() => _UsedCarsPageState();
}

class _UsedCarsPageState extends State<UsedCarsPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool isSwitched = false;
  bool isRowVisible = true;
  var isVisible = true;


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      key: _key,
      backgroundColor: theme.colorScheme.primary,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEntypopricetag,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                        ),
                        child: Text(
                          "Home",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              ExpansionTile(
                title: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgEntypopricetagGray800,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                        ),
                        child: Text(
                          "New Cars",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                childrenPadding: EdgeInsets.only(left: 25), //children padding
                children: [
                  ListTile(
                    title: Text("Find New Car"),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context)=> Iphone14FourScreen()));
                    },
                  ),
                  ListTile(
                    title: Text("Upcoming Cars"),
                    onTap: () {
                      //action on press

                    },
                  ),
                  ListTile(
                    title: Text("Compare Cars"),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context)=> CompareNavbarScreen2()));
                    },
                  ),
                  ListTile(
                    title: Text("On- Road Cars"),

                    //action on press
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context)=> PriceNavbarScreen()));

                    },
                  ),

                  //more child menu
                ],
              ),
              ExpansionTile(
                title: Padding(
                  padding: getPadding(
                    left: 1,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgGameiconscarkey,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                          bottom: 2,
                        ),
                        child: Text(
                          "Used Cars",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                childrenPadding: EdgeInsets.only(left: 25), //children padding
                children: [
                  ListTile(
                    title: Text("Find Used Cars"),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context)=>  UsedCarsPage()));
                    },
                  ),
                  ListTile(
                    title: Text("Explore Used Cars"),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: Text("Check Car Valuation"),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: Text("My Listing"),
                    onTap: () {
                      //action on press
                    },
                  ),

                  //more child menu
                ],
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder:
                            (context)=> SellCarsOneScreen()));

                  },
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgGameiconscash,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(left: 15),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                          top: 2,
                        ),
                        child: Text(
                          "Sell Cars",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgBasilwalletoutline,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(left: 15),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        bottom: 2,
                      ),
                      child: Text(
                        "Car Loan",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 16,
                ),
                child: GestureDetector(
                  //EmiCalculatorScreen
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder:
                            (context)=> EmiCalculatorScreen()));
                  },
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgPhcalculator,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(left: 15),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                          bottom: 2,
                        ),
                        child: Text(
                          "EMI Calculator",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ExpansionTile(
                title: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMdifilereportoutline,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        bottom: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        top: 1,
                        bottom: 2,
                      ),
                      child: Text(
                        "Others",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
                childrenPadding: EdgeInsets.only(left: 25), //children padding
                children: [
                  ListTile(
                    title: Text("News"),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: Text("Tip & Advice"),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: Text("Favourite"),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: Text("Privacy Policy"),
                    onTap: () {
                      //action on press
                    },
                  ),

                  //more child menu
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFluentpersonf,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(left: 15),
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackScreen()));
                      },
                      child: Padding(
                        padding: getPadding(
                          left: 11,
                          bottom: 2,
                        ),
                        child: Text(
                          "Feedback",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite24x24,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(left: 15),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        bottom: 2,
                      ),
                      child: Text(
                        "Favorites",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 4,
                      ),
                      child: Text(
                        "Notifications".toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumBlack90010,
                      ),
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                    activeTrackColor: Colors.green.withOpacity(0.5),
                    inactiveThumbColor: Colors.grey,
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 38,
                ),
                child: Text(
                  "TOLL Free Number",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeGray80003,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 2,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCall,
                      height: getSize(
                        13,
                      ),
                      width: getSize(
                        13,
                      ),
                      margin: getMargin(
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                      ),
                      child: Text(
                        "1800-098-8891",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray80003,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 3,
                ),
                child: Text(
                  "ask the expert",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelSmallRed600,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 85,
                ),
                child: Text(
                  "Connect with us",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelMediumBlack90010_1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgJamfacebookcircle,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(left: 5),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTypcnsocialli,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(left: 5),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgJamtwittercircle,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(left: 5),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgMdiinstagram,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(left: 5),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgJamyoutubecircle,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(left: 5),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgShare,
                      height: getSize(
                        12,
                      ),
                      width: getSize(
                        12,
                      ),
                      margin: getMargin(left: 5),
                    ),
                  ],
                ),
              ),
              Opacity(
                opacity: 0.9,
                child: CustomImageView(
                  imagePath: ImageConstant.imgIstockphoto929,
                  height: getVerticalSize(
                    129,
                  ),
                  width: getHorizontalSize(
                    280,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: getVerticalSize(311),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle325,
                        height: getVerticalSize(311),
                        width: getHorizontalSize(390),
                        alignment: Alignment.center),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(left: 21, top: 13, right: 18),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                  height: getVerticalSize(21),
                                  leadingWidth: 41,
                                  leading: AppbarImage(
                                      height: getSize(20),
                                      width: getSize(20),
                                      svgPath: ImageConstant.imgGgmenuleft,
                                      margin: getMargin(left: 21),
                                      onTap: () {
                                        _key.currentState!.openDrawer();
                                      }),
                                  title: AppbarSubtitle2(
                                      text: "Used Car",
                                      margin: getMargin(left: 20)),
                                  actions: [
                                    AppbarImage(
                                        height: getSize(20),
                                        width: getSize(20),
                                        svgPath:
                                            ImageConstant.imgMdilocationGray200,
                                        margin: getMargin(left: 18, right: 18),
                                        onTap: () {
                                          bottomSheets(context);
                                        })
                                  ]),
                              Padding(
                                padding: getPadding(top: 98),
                                child: Text("Find your Right Used Car",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleLargePrimary),
                              ),
                            ]),
                      ),
                    ),
                  ]),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: getVerticalSize(56),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: getPadding(left: 23),
                  child: Text("Choose your Budget",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleLarge),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: CustomImageView(
                  imagePath: ImageConstant.imgComponent2,
                  height: getVerticalSize(24),
                  width: getHorizontalSize(348),
                  margin: getMargin(left: 4)),
            ),
            Padding(
              padding: getPadding(left: 25, top: 7, right: 21),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Any",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBlack900_1),
                    Text("20+ Lakhs",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBlack900_1)
                  ]),
            ),
            CustomElevatedButton(
                onTap: () {
                  // _showPopUpMessage(context);
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                text: "Find Used Cars",
                margin: getMargin(top: 26, right: 17, left: 25),
                buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      double.maxFinite,
                      getVerticalSize(45),
                    ),
                  ),
                ),
                buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold),
          Visibility(
              visible: isVisible,
            child: Column(
                children: [
                  Padding(
                      padding: getPadding(top: 45, right: 75),
                      child: Text("Find the cars of your choice",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleLarge)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(left: 48, top: 15),
                      child: Row(children: [
                        GestureDetector(
                          onTap: () {
                            bottomSheets2(context);
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: appTheme.blueA700,
                                          width: getHorizontalSize(1)),
                                      borderRadius: BorderRadiusStyle.circleBorder40),
                                  child: Container(
                                    height: getSize(80),
                                    width: getSize(80),
                                    padding: getPadding(
                                        left: 24, top: 19, right: 24, bottom: 19),
                                    decoration: AppDecoration.outline2.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder40),
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgClock,
                                          height: getVerticalSize(40),
                                          width: getHorizontalSize(32),
                                          alignment: Alignment.center)
                                    ]),
                                  ),
                                ),
                                Text("BRAND",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleSmallBlack900_1),
                                Padding(
                                  padding: getPadding(top: 2),
                                  child: Text("View all cars by Brand",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall),
                                ),
                              ]),
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapColumnmusic(context);
                          },
                          child: Padding(
                            padding: getPadding(left: 47),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: appTheme.blueA700,
                                            width: getHorizontalSize(1)),
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder40),
                                    child: Container(
                                      height: getSize(80),
                                      width: getSize(80),
                                      padding: getPadding(all: 25),
                                      decoration: AppDecoration.outline2.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder40),
                                      child: Stack(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMusic,
                                            height: getSize(29),
                                            width: getSize(29),
                                            alignment: Alignment.center),
                                      ]),
                                    ),
                                  ),
                                  Text("EMI/Budget",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.titleSmallBlack900_1),
                                  Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("Cars that fit your budget ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall),
                                  ),
                                ]),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(left: 57, top: 18),
                      child: Row(children: [
                        GestureDetector(
                          onTap: () {
                            onTapColumncut(context);
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: appTheme.blueA700,
                                            width: getHorizontalSize(1)),
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder40),
                                    child: Container(
                                        height: getSize(80),
                                        width: getSize(80),
                                        padding: getPadding(
                                            left: 21, top: 20, right: 21, bottom: 20),
                                        decoration: AppDecoration.outline2.copyWith(
                                            borderRadius:
                                                BorderRadiusStyle.circleBorder40),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCut,
                                              height: getVerticalSize(39),
                                              width: getHorizontalSize(37),
                                              alignment: Alignment.center)
                                        ]))),
                                Text("BODY TYPE",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleSmallBlack900_1),
                                Padding(
                                  padding: getPadding(top: 2),
                                  child: Text("See All body styles",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall),
                                ),
                              ]),
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapColumnreply(context);
                          },
                          child: Padding(
                            padding: getPadding(left: 74),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: appTheme.blueA700,
                                          width: getHorizontalSize(1),
                                        ),
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder40),
                                    child: Container(
                                      height: getSize(80),
                                      width: getSize(80),
                                      padding: getPadding(
                                          left: 21, top: 24, right: 21, bottom: 24),
                                      decoration: AppDecoration.outline2.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder40),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgReply,
                                              height: getVerticalSize(31),
                                              width: getHorizontalSize(37),
                                              alignment: Alignment.center)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text("FUEL TYPE",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.titleSmallBlack900_1),
                                  Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("View Fuel Options",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall),
                                  ),
                                ]),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                      padding: getPadding(top: 61, right: 59),
                      child: Text("Find Used Car of Yours Choice",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleLarge)),
                  TabBar(
                      controller: tabviewController,
                      unselectedLabelColor: Colors.black,
                      labelColor: Color(0xFF00C070),
                      indicatorColor: Colors.green,
                      isScrollable: true,
                      indicatorPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      // A
                      tabs: [
                        Tab(
                            child: Text("POPULAR MODELS",
                                overflow: TextOverflow.ellipsis)),
                        Tab(child: Text("BRANDS", overflow: TextOverflow.ellipsis)),
                      ]),
                  SizedBox(
                    height: getVerticalSize(300),
                    child: TabBarView(controller: tabviewController, children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(left: 15, top: 42),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: GestureDetector(
                              onTap: () {
                                onTapAltok10(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IntrinsicWidth(
                                    child: GestureDetector(
                                      onTap: () {
                                        onTapAltok10(context);
                                      },
                                      child: Container(
                                        decoration: AppDecoration.fill1.copyWith(
                                            borderRadius:
                                                BorderRadiusStyle.roundedBorder3),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(bottom: 11),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      color: Colors.grey.shade300,
                                                      height: 1,
                                                      width: 150,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMarutialto1667634241116x163,
                                                      height: getVerticalSize(116),
                                                      width: getHorizontalSize(163),
                                                      margin: getMargin(left: 5),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(top: 11),
                                                      child: Text(
                                                          "Maruti Suzuki Alto k10",
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmall12_1),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(top: 4),
                                                      child: Row(children: [
                                                        Text("Rs.",
                                                            overflow:
                                                                TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900),
                                                        Padding(
                                                          padding:
                                                              getPadding(left: 5),
                                                          child: Text("4.57 Lakh",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                                  TextAlign.left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                                  TextAlign.left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9),
                                                        ),
                                                      ]),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(top: 6),
                                                      child: Text("Starting Price",
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallBlueA7009),
                                                    ),
                                                  ]),
                                            ),
                                            Padding(
                                              padding:
                                                  getPadding(left: 28, bottom: 11),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    color: Colors.grey.shade300,
                                                    height: 1,
                                                    width: 150,
                                                  ),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMarutialto1667634241116x163,
                                                      height: getVerticalSize(116),
                                                      width: getHorizontalSize(163),
                                                      margin: getMargin(left: 5)),
                                                  Padding(
                                                    padding: getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(
                                                      children: [
                                                        Text("Rs.",
                                                            overflow:
                                                                TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900),
                                                        Padding(
                                                          padding:
                                                              getPadding(left: 5),
                                                          child: Text("4.57 Lakh",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                                  TextAlign.left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                                  TextAlign.left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text("Starting Price",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // onTapFramefour(context);
                                    },
                                    child: Container(
                                      height: getVerticalSize(203),
                                      width: getHorizontalSize(155),
                                      margin: getMargin(left: 11),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/img_image5.png',
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.scaleDown,
                                ),
                                Text(
                                  "MARUTI SUZUKI",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/FE.JPG',
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.scaleDown,
                                ),
                                Text(
                                  "FERRARI",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/TOYO.JPG',
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.scaleDown,
                                ),
                                Text(
                                  "TOYOTA",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/FOR.JPG',
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.scaleDown,
                                ),
                                Text(
                                  "FORD",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  CustomOutlinedButton(
                      text: "View All Used Cars",
                      margin: getMargin(left: 21, right: 21),
                      buttonStyle: CustomButtonStyles.outlineGreenA400.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size(double.maxFinite, getVerticalSize(45)))),
                      buttonTextStyle: CustomTextStyles.titleSmallGreenA400,
                      onTap: () {
                        onTapViewallused(context);
                      }),
        Container(
            margin: getMargin(left: 10, top: 58, right: 10),
            padding: getPadding(left: 16, top: 17, right: 16, bottom: 17),
            decoration: AppDecoration.fill2.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(left: 6, top: 8),
                      child: Row(
                        children: [
                          Text(
                            "Want to Sell Your Car?",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleMediumGray800,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 78.0),
                            child: Switch(
                              activeColor: Colors.green.shade500,
                              value: isRowVisible,
                              onChanged: (value) {
                                setState(() {
                                  isRowVisible = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: isRowVisible,
                      child: Padding(
                        padding: getPadding(left: 6, top: 17),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup23x23,
                              height: getSize(23),
                              width: getSize(23),
                            ),
                            Padding(
                              padding: getPadding(left: 15, top: 2, bottom: 2),
                              child: Text(
                                "Get Buyer details via SMS & Email",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isRowVisible,
                      child:   Padding(
                        padding: getPadding(left: 8, top: 18),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup11,
                              height: getSize(20),
                              width: getSize(20),
                            ),
                            Padding(
                              padding: getPadding(left: 16, top: 1, bottom: 1),
                              child: Text(
                                "Sell your Car at best price",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isRowVisible,
                      child:     Padding(
                        padding: getPadding(left: 7, top: 18),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup12,
                              height: getSize(20),
                              width: getSize(20),
                            ),
                            Padding(
                              padding: getPadding(left: 17, top: 1),
                              child: Text(
                                "Large number of Genuine Buyers",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

Visibility(
                      visible: isRowVisible,
                      child:    CustomOutlinedButton(
                        text: "Sell Car Online",
                        margin: getMargin(left: 1, top: 26),
                        buttonStyle: CustomButtonStyles.outlineGreenA400.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(45)),
                          ),
                        ),
                        buttonTextStyle: CustomTextStyles.titleSmallGreenA400,
                        onTap: () {
                          onTapSellcaronline(context);
                        },
                      ),
                    ),



                  ],
            ),),
                  Padding(
                      padding: getPadding(left: 3, top: 39),
                      child: Text("Recently viewed Cars",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleLarge)),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(left: 15, top: 42),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IntrinsicWidth(
                              child: GestureDetector(
                                onTap: () {
                                  // onTapRowmarutialto16(context);
                                },
                                child: Container(
                                  decoration: AppDecoration.fill1.copyWith(
                                      borderRadius: BorderRadiusStyle.roundedBorder3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(bottom: 11),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                color: Colors.grey.shade300,
                                                height: 1,
                                                width: 150,
                                              ),
                                              CustomImageView(
                                                onTap: () {
                                                  onTapAltok10(context);
                                                },
                                                imagePath: ImageConstant
                                                    .imgMarutialto1667634241116x163,
                                                height: getVerticalSize(116),
                                                width: getHorizontalSize(163),
                                                margin: getMargin(left: 5),
                                              ),
                                              Padding(
                                                padding: getPadding(top: 11),
                                                child: Text("Maruti Suzuki Alto k10",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmall12_1),
                                              ),
                                              Padding(
                                                padding: getPadding(top: 4),
                                                child: Row(children: [
                                                  Text("Rs.",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900),
                                                  Padding(
                                                    padding: getPadding(left: 5),
                                                    child: Text("4.57 Lakh",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: CustomTextStyles
                                                            .labelLargeBlack900),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                        left: 5, top: 2, bottom: 2),
                                                    child: Text("Onwards",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall9),
                                                  ),
                                                ]),
                                              ),
                                              Padding(
                                                padding: getPadding(top: 6),
                                                child: Text("Starting Price",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallBlueA7009),
                                              ),
                                            ]),
                                      ),
                                      Padding(
                                        padding: getPadding(left: 28, bottom: 11),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              color: Colors.grey.shade300,
                                              height: 1,
                                              width: 150,
                                            ),
                                            CustomImageView(
                                                onTap: () {
                                                  onTapAltok10(context);
                                                },
                                                imagePath: ImageConstant
                                                    .imgMarutialto1667634241116x163,
                                                height: getVerticalSize(116),
                                                width: getHorizontalSize(163),
                                                margin: getMargin(left: 5)),
                                            Padding(
                                              padding: getPadding(top: 11),
                                              child: Text("Maruti Suzuki Alto k10",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      CustomTextStyles.bodySmall12_1),
                                            ),
                                            Padding(
                                              padding: getPadding(top: 4),
                                              child: Row(
                                                children: [
                                                  Text("Rs.",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900),
                                                  Padding(
                                                    padding: getPadding(left: 5),
                                                    child: Text("4.57 Lakh",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: CustomTextStyles
                                                            .labelLargeBlack900),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                        left: 5, top: 2, bottom: 2),
                                                    child: Text("Onwards",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall9),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(top: 6),
                                              child: Text("Starting Price",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallBlueA7009),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // onTapFramefour(context);
                              },
                              child: Container(
                                height: getVerticalSize(203),
                                width: getHorizontalSize(155),
                                margin: getMargin(left: 11),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(3),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: getPadding(left: 2, top: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FindUsedCarsForm()));
                              },
                              child: Container(
                                height: getVerticalSize(45),
                                width: getHorizontalSize(175),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: appTheme.greenA700,
                                    width: getHorizontalSize(1),
                                  ),
                                ),
                                child: Center(
                                  child: Text("Get Seller Details",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.titleSmallGreenA400),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FindUsedCarsForm()));
                              },
                              child: Container(
                                height: getVerticalSize(45),
                                width: getHorizontalSize(175),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: appTheme.greenA700,
                                    width: getHorizontalSize(1),
                                  ),
                                ),
                                child: Center(
                                  child: Text("Get Seller Details",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.titleSmallGreenA400),
                                ),
                              ),
                            )
                          ])),
                  Padding(
                      padding: getPadding(left: 3, top: 75, right: 156),
                      child: Text("Tools you may need",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleLarge)),
                  // Padding(
                  //   padding: getPadding(left: 23, top: 24),
                  //   child:
                  //       Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  //     CustomImageView(
                  //         imagePath: ImageConstant.imgImage95,
                  //         height: getSize(52),
                  //         width: getSize(52),
                  //         margin: getMargin(bottom: 12)),
                  //     Expanded(
                  //       child: Padding(
                  //         padding: getPadding(left: 22),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           children: [
                  //             Text("Used Car Valuation",
                  //                 overflow: TextOverflow.ellipsis,
                  //                 textAlign: TextAlign.left,
                  //                 style: CustomTextStyles.titleMediumGray800),
                  //             Container(
                  //               width: getHorizontalSize(227),
                  //               margin: getMargin(top: 6),
                  //               child: Text(
                  //                   "Check the price of a used car with our calculator",
                  //                   maxLines: 2,
                  //                   overflow: TextOverflow.ellipsis,
                  //                   textAlign: TextAlign.left,
                  //                   style: CustomTextStyles.bodySmallGray80012),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ]),
                  // ),
                  Padding(
                    padding: getPadding(left: 23, top: 18),
                    child:
                        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgMaskgroup50x50,
                          height: getSize(52),
                          width: getSize(52),
                          margin: getMargin(top: 4, bottom: 8)),
                      Expanded(
                        child: Padding(
                          padding: getPadding(left: 23),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Used Car Valuation",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMediumGray800),
                                Container(
                                  width: getHorizontalSize(227),
                                  margin: getMargin(top: 6),
                                  child: Text(
                                      "Check the price of a used car with our calculator",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmallGray80012),
                                ),
                              ]),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
          ),
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Text("No Data Found"),
            ))
          ],
        ),
      ),
    );
  }

  onTapGgmenuleft1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameThirteenScreen);
  }

  onTapAltok10(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.usedCarPageScreen);
  }

  onTapMdilocation1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameOneScreen);
  }

  onTapViewallused(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  onTapSellcaronline(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  onTapColumnmusic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.budgetScreen);
  }

  onTapColumncut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bodyTypeScreen);
  }

  onTapColumnreply(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fuelTypeScreen);
  }
}
void _showPopUpMessage(BuildContext context) async {
  OverlayState? overlayState = Overlay.of(context);
  late OverlayEntry overlayEntry; // Initialize as late

  overlayEntry = OverlayEntry(
    builder: (BuildContext context) => Positioned(
      top: MediaQuery.of(context).size.height * 0.4,
      left: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.width * 0.8,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Upcoming Soon",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueAccent,
                  fontFamily: 'YourFontFamily', // Specify the desired font family
                ),
              ),

              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    ),
  );

  overlayState?.insert(overlayEntry);

  // Simulate a delay of 3 seconds (loading process)
  await Future.delayed(Duration(seconds: 4));

  overlayEntry.remove();
}



void bottomSheets(context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    // shape: const RoundedRectangleBorder(
    //   borderRadius: BorderRadius.only(
    //       topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
    // ),
    isScrollControlled: true,
    constraints: BoxConstraints.tight(
      Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * .25),
    ),
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  right: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "Confirm your city",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    CustomIconButton(
                      height: 30,
                      width: 30,
                      margin: getMargin(
                        left: 75,
                        bottom: 1,
                      ),
                      padding: getPadding(
                        all: 5,
                      ),
                      decoration: IconButtonStyleHelper.outlineBlack900,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgRadixiconscross2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Text(
                "This is necessary to personalize result for you  ",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.bodySmall12_2,
              ),
            ),
            Container(
              width: getHorizontalSize(
                350,
              ),
              margin: getMargin(
                top: 19,
              ),
              padding: getPadding(
                left: 8,
                top: 1,
                right: 238,
                bottom: 1,
              ),
              decoration: AppDecoration.outline12.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3,
              ),
              child: CustomElevatedButton(
                text: "Noida",
                rightIcon: Container(
                  margin: getMargin(
                    left: 10,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgRadixiconscross2,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillBluegray100.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    72,
                  ),
                  getVerticalSize(
                    24,
                  ),
                ))),
                buttonTextStyle: theme.textTheme.bodySmall!,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(top: 9, left: 20),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgIcoutlinemylocation,
                      height: getSize(
                        16,
                      ),
                      width: getSize(
                        16,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7,
                      ),
                      child: Text(
                        "Detect my location",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallBlueA700.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomOutlinedButton(
              text: "Confirm",
              margin: getMargin(
                top: 12,
                bottom: 1,
              ),
              buttonStyle: CustomButtonStyles.outlineLightgreen900.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                getHorizontalSize(
                  121,
                ),
                getVerticalSize(
                  34,
                ),
              ))),
              buttonTextStyle: CustomTextStyles.bodySmallLightgreen900,
            ),
          ],
        ),
      ),
    ),
  );
}
//Search bottom sheets

void bottomSheets2(context) {
  List<Map<String, dynamic>> yourDataList = [
    {
      'image': 'assets/images/img_download22.png',
      'text': 'Tata',
    },
    {
      'image': 'assets/images/img_image5.png',
      'text': 'Maruti suzuki',
    },
    {
      'image': 'assets/images/img_download42.png',
      'text': 'Hyndai',
    },
    {
      'image': 'assets/images/img_images61.png',
      'text': 'Honda',
    },
    {
      'image': 'assets/images/img_d06f9bc82a50b58.png',
      'text': 'Skoda',
    },
    {
      'image': 'assets/images/img_image45.png',
      'text': 'Mahindra',
    },
    {
      'image': 'assets/images/img_image46.png',
      'text': 'Renault',
    },
    {
      'image': 'assets/images/ogi-kia 1.png',
      'text': 'Kia',
    },
    {
      'image': 'assets/images/download (9) 1.png',
      'text': 'Nisaan',
    },
    {
      'image': 'assets/images/download (10) 1.png',
      'text': 'Volkswagon',
    },
    {
      'image': 'assets/images/download (6) 2.png',
      'text': 'MG',
    },
    {
      'image': 'assets/images/image 6.png',
      'text': 'Toyota',
    },
    {
      'image': 'assets/images/download (5) 1.png',
      'text': 'Mercedes',
    },
    {
      'image': 'assets/images/download (8) 1.png',
      'text': 'Isuzu Motors',
    },
    {
      'image': 'assets/images/download (9) 2.png',
      'text': 'Audi',
    },
    {
      'image': 'assets/images/download (11) 1.png',
      'text': 'Jaguar',
    },
    {
      'image': 'assets/images/download__15_-removebg-preview 1.png',
      'text': 'Land Rover',
    },
    {
      'image': 'assets/images/download__12_-removebg-preview 1.png',
      'text': 'Ferrari',
    },
    {
      'image': 'assets/images/download__13_-removebg-preview 1.png',
      'text': 'Bentley',
    },
    {
      'image': 'assets/images/download__14_-removebg-preview (1) 1.png',
      'text': 'Volvo',
    },
    {
      'image': 'assets/images/download__14_-removebg-preview 1.png',
      'text': 'Force Motors',
    },
    {
      'image': 'assets/images/download__16_-removebg-preview 1.png',
      'text': 'Porsche',
    },
    {
      'image': 'assets/images/images__3_-removebg-preview 1.png',
      'text': 'Rolls Royce',
    },
    {
      'image': 'assets/images/download__17_-removebg-preview 1.png',
      'text': 'BMW',
    },
  ];

  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    constraints: BoxConstraints.tight(
      Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * .9),
    ),
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: CustomAppBar(
                  height: getVerticalSize(24),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                  title: Padding(
                    padding: getPadding(left: 8),
                    child: Text("See search Result",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleMedium),
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(left: 16, top: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomElevatedButton(
                            text: "Quick Search",
                            buttonStyle: CustomButtonStyles.fillRedA70001
                                .copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(171),
                                            getVerticalSize(37)))),
                            buttonTextStyle:
                                CustomTextStyles.titleSmallPrimary_1),
                        CustomOutlinedButton(
                            text: "Advanced",
                            margin: getMargin(left: 16),
                            buttonStyle: CustomButtonStyles.outlineRedA70001
                                .copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(171),
                                            getVerticalSize(37)))),
                            buttonTextStyle:
                                CustomTextStyles.titleSmallRedA70001)
                      ])),
              Padding(
                  padding: getPadding(top: 16),
                  child: Divider(
                      height: getVerticalSize(2),
                      thickness: getVerticalSize(2),
                      color: appTheme.blueGray100)),
              // Adding GridView here
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  // Increase the axis count
                  crossAxisSpacing: 5.0,
                  // Adjust the spacing between columns
                  mainAxisSpacing: 5.0, // Adjust the spacing between rows
                ),
                itemCount: yourDataList.length,
                // Number of items in the grid
                itemBuilder: (context, index) {
                  return GridTile(
                    child: GestureDetector(
                      onTap: () {
                        onTapViewupcoming(context);
                      },
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              yourDataList[index]['image'],
                              width: 40,
                              height: 40,
                              fit: BoxFit.scaleDown,
                            ),
                            SizedBox(height: 5),
                            Text(
                              yourDataList[index]['text'],
                              style: TextStyle(
                                  fontSize: 12), // Adjust the font size
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    ),
  );
}

onTapViewupcoming(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.newCarScreen);
}
