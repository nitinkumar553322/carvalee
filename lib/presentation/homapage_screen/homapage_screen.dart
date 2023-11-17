import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/compare_navbar_screen/compaire_navbar2.dart';
import 'package:carwalee/presentation/compare_navbar_screen/widgets/compare_navbar_item_widget.dart';
import 'package:carwalee/presentation/used_car_page_screen/used_car_page_screen.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../widgets/custom_icon_button.dart';
import '../../widgets/feedback_screen.dart';
import '../../widgets/privacy_policy.dart';
import '../emi_calculator_screen/emi_calculator_screen.dart';
import '../homapage_screen/widgets/list_two_item_widget.dart';
import '../iphone_14_eight_screen/iphone_14_eight_screen.dart';
import '../iphone_14_four_screen/iphone_14_four_screen.dart';
import '../new_car_screen/new_car_screen.dart';
import '../price_navbar_screen/price_navbar_screen.dart';
import '../sell_cars_one_screen/sell_cars_one_screen.dart';
import '../sell_cars_screen/sell_cars_screen.dart';
import '../used_cars_page/used_cars_page.dart';

// ignore_for_file: must_be_immutable
class HomapageScreen extends StatefulWidget {
  HomapageScreen({Key? key}) : super(key: key);

  @override
  State<HomapageScreen> createState() => _HomapageScreenState();
}

class _HomapageScreenState extends State<HomapageScreen> {
  TextEditingController searchController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
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
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context)=> PrivacyPolicy()));

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
            Stack(alignment: Alignment.center, children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: getVerticalSize(360),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle243,
                          height: getVerticalSize(392),
                          width: getHorizontalSize(390),
                          alignment: Alignment.center),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(left: 13, top: 7, right: 14),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                  height: getVerticalSize(21),
                                  leadingWidth: 38,
                                  leading: AppbarImage(
                                      height: getSize(20),
                                      width: getSize(20),
                                      svgPath: ImageConstant.imgGgmenuleft,
                                      margin: getMargin(left: 18),
                                      onTap: () {
                                        _key.currentState!.openDrawer();
                                      }),
                                  title: Padding(
                                      padding: getPadding(left: 8),
                                      child: Text("New Cars",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallGray200)),
                                  actions: [
                                    AppbarImage(
                                        height: getSize(20),
                                        width: getSize(20),
                                        imagePath: ImageConstant.imgMaskgroup3,
                                        onTap: () {
                                          onTapNews(context);
                                        },
                                        margin: getMargin(left: 14)),
                                    AppbarImage(
                                        height: getSize(20),
                                        width: getSize(20),
                                        svgPath: ImageConstant
                                            .imgClaritynotificationline,
                                        margin: getMargin(left: 8),
                                        onTap: () {
                                          onTapnotification(context);
                                        }),
                                    AppbarImage(
                                        height: getSize(20),
                                        width: getSize(20),
                                        svgPath:
                                            ImageConstant.imgMdilocationGray200,
                                        margin: getMargin(left: 8, right: 14),
                                        onTap: () {
                                          bottomSheets(context);
                                        })
                                  ]),
                              CustomTextFormField(
                                  controller: searchController,
                                  margin: getMargin(top: 29, right: 8),
                                  contentPadding:
                                      getPadding(left: 28, top: 9, bottom: 9),
                                  textStyle: CustomTextStyles
                                      .titleSmallPrimarySemiBold_1,
                                  hintText: "Search your dream car",
                                  hintStyle: CustomTextStyles
                                      .titleSmallPrimarySemiBold_1,
                                  textInputAction: TextInputAction.next,
                                  suffix: GestureDetector(
                                    onTap: () {
                                      bottomSheets2(context);
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFF0066FF),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            )),
                                        margin: getMargin(
                                            // left: 30,
                                            top: 2,
                                            right: 1,
                                            bottom: 1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSearch,
                                              height: getSize(21),
                                              width: getSize(21)),
                                        )),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40)),
                                  filled: true,
                                  fillColor:
                                      theme.colorScheme.secondaryContainer,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBluegray10001,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBluegray10001,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBluegray10001,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBluegray10001),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Text("Your cars for choice".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleSmall),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(left: 18, top: 42),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IntrinsicWidth(
                        child: GestureDetector(
                          onTap: () {
                            onTapDetails(context);
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
                                          child: Text("On-road Price, Noida",
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
                                        child: Text("On-road Price, Noida",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallBlueA7009),
                                      ),
                                    ],
                                  ),
                                ),
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
                                          child: Text("On-road Price, Noida",
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
                                        child: Text("On-road Price, Noida",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallBlueA7009),
                                      ),
                                    ],
                                  ),
                                ),
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
                                          child: Text("On-road Price, Noida",
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
                                        child: Text("On-road Price, Noida",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallBlueA7009),
                                      ),
                                    ],
                                  ),
                                ),
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
                                          child: Text("On-road Price, Noida",
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
                                        child: Text("On-road Price, Noida",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallBlueA7009),
                                      ),
                                    ],
                                  ),
                                ),
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
                                          child: Text("On-road Price, Noida",
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
                                        child: Text("On-road Price, Noida",
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
                    
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(left: 35, top: 42),
                child: Text("Explore Cars by",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall),
              ),
            ),
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
                padding: getPadding(top: 36),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "Top", style: theme.textTheme.titleLarge),
                      TextSpan(
                          text: " Popular cars in india",
                          style: CustomTextStyles.titleLargeBold)
                    ]),
                    textAlign: TextAlign.left)),
            GestureDetector(
              onTap: () {
                onTapViewupcoming(context);
              },
              child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: getVerticalSize(181),
                      child: ListView.separated(
                          padding: getPadding(left: 15, top: 6),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: getHorizontalSize(14));
                          },
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ListTwoItemWidget();
                          }))),
            ),
            Padding(
                padding: getPadding(top: 56),
                child: Text("CHECK ON-ROAD PRICE",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleLargeSemiBold)),
            CustomTextFormField(
                controller: nameController,
                margin: getMargin(left: 16, top: 14, right: 16),
                contentPadding:
                    getPadding(left: 9, top: 11, right: 9, bottom: 11),
                textStyle: CustomTextStyles.bodySmallBlack90012,
                hintText: "Type to select car name,eg.AudiA4 ",
                hintStyle: CustomTextStyles.bodySmallBlack90012,
                filled: true,
                fillColor: appTheme.gray20001,
                defaultBorderDecoration:
                    TextFormFieldStyleHelper.outlineBluegray100,
                enabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineBluegray100,
                focusedBorderDecoration:
                    TextFormFieldStyleHelper.outlineBluegray100,
                disabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineBluegray100),
            CustomElevatedButton(
                text: "CHECK NOW",
                margin: getMargin(left: 18, top: 24, right: 18),
                buttonStyle: CustomButtonStyles.fillBlueA700.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(41)))),
                buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold),
            Padding(
                padding: getPadding(top: 22),
                child: Text("Contact details are not needed to get the price",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmallGray80012)),
            CustomImageView(
                imagePath: ImageConstant.imgDownload131,
                height: getVerticalSize(187),
                width: getHorizontalSize(385),
                margin: getMargin(top: 68)),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: getPadding(top: 33, right: 58),
                    child: Text("Based on your research",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge))),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(left: 40, top: 24),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    IntrinsicWidth(
                        child: GestureDetector(
                            onTap: () {
                              onTapDetails(context);
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
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                        getVerticalSize(116),
                                                    width:
                                                        getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(left: 28, bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                        getVerticalSize(116),
                                                    width:
                                                        getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding: getPadding(bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                    getVerticalSize(116),
                                                    width:
                                                    getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding:
                                          getPadding(left: 28, bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                    getVerticalSize(116),
                                                    width:
                                                    getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding: getPadding(bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                    getVerticalSize(116),
                                                    width:
                                                    getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding:
                                          getPadding(left: 28, bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                    getVerticalSize(116),
                                                    width:
                                                    getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding: getPadding(bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                    getVerticalSize(116),
                                                    width:
                                                    getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding:
                                          getPadding(left: 28, bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                    getVerticalSize(116),
                                                    width:
                                                    getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding: getPadding(bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                    getVerticalSize(116),
                                                    width:
                                                    getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                      Padding(
                                          padding:
                                          getPadding(left: 28, bottom: 11),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMarutialto1667634241116x163,
                                                    height:
                                                    getVerticalSize(116),
                                                    width:
                                                    getHorizontalSize(163),
                                                    margin: getMargin(left: 5)),
                                                Padding(
                                                    padding:
                                                    getPadding(top: 11),
                                                    child: Text(
                                                        "Maruti Suzuki Alto k10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmall12_1)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "4.57 Lakh",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text("Onwards",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .bodySmall9))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "On-road Price, Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBlueA7009))
                                              ])),
                                    ])))),
                    GestureDetector(
                      onTap: () {
                        onTapDetails(context);
                      },
                      child: Container(
                        height: getVerticalSize(203),
                        width: getHorizontalSize(155),
                        margin: getMargin(left: 11),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(3)),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
                padding: getPadding(top: 15),
                child: Text("Best-selling cars in india",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            GestureDetector(
              onTap: () {
                onTapViewupcoming(context);
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: getVerticalSize(184),
                  child: ListView.separated(
                      padding: getPadding(left: 20, top: 9),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: getHorizontalSize(14));
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTwoItemWidget();
                      }),
                ),
              ),
            ),
            Padding(
                padding: getPadding(top: 38),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "Top", style: theme.textTheme.titleLarge),
                      TextSpan(
                          text: " highly rated cars in india",
                          style: CustomTextStyles.titleLargeBold)
                    ]),
                    textAlign: TextAlign.left)),
            GestureDetector(
              onTap: () {
                onTapViewupcoming(context);
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: getVerticalSize(184),
                  child: ListView.separated(
                      padding: getPadding(left: 19, top: 9),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: getHorizontalSize(14));
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTwoItemWidget();
                      }),
                ),
              ),
            ),
            Container(
              height: getVerticalSize(215),
              margin: getMargin(top: 44),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: getPadding(left: 50),
                        child: Text("Most Compared Cars",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleLarge))),
                Container(
                  height: 250,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Column(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle13,
                                            height: getVerticalSize(143),
                                            width: getHorizontalSize(141),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8)),
                                            alignment: Alignment.topRight),
                                        Text("Suzuki Swift Force Gurkha",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelMedium),
                                        Opacity(
                                            opacity: 0.5,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                child: Text("Rs. 5,85,000",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelSmallOnPrimaryContainer)))
                                      ]),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage2,
                                        height: getVerticalSize(31),
                                        width: getHorizontalSize(33),
                                        alignment: Alignment.topCenter,
                                      ),
                                      Column(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle13,
                                            height: getVerticalSize(143),
                                            width: getHorizontalSize(141),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8)),
                                            alignment: Alignment.topRight),
                                        Text("Suzuki Swift Force Gurkha",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelMedium),
                                        Opacity(
                                            opacity: 0.5,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                child: Text("Rs. 5,85,000",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelSmallOnPrimaryContainer)))
                                      ]),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapViewcomparison(context);
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 98.0),
                                      child: Container(
                                        decoration: AppDecoration.outline9
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder7),
                                        child: OutlineGradientButton(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(1),
                                              top: getVerticalSize(1),
                                              right: getHorizontalSize(1),
                                              bottom: getVerticalSize(1)),
                                          strokeWidth: getHorizontalSize(1),
                                          gradient: LinearGradient(
                                              begin: Alignment(0.5, 0),
                                              end: Alignment(0.5, 1),
                                              colors: [
                                                appTheme.redA700,
                                                appTheme.redA700
                                                    .withOpacity(0.83)
                                              ]),
                                          corners: Corners(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                              bottomRight: Radius.circular(8)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("View Comparison",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeRedA700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                                  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Column(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle13,
                                            height: getVerticalSize(143),
                                            width: getHorizontalSize(141),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8)),
                                            alignment: Alignment.topRight),
                                        Text("Suzuki Swift Force Gurkha",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelMedium),
                                        Opacity(
                                            opacity: 0.5,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                child: Text("Rs. 5,85,000",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelSmallOnPrimaryContainer)))
                                      ]),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage2,
                                        height: getVerticalSize(31),
                                        width: getHorizontalSize(33),
                                        alignment: Alignment.topCenter,
                                      ),
                                      Column(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle13,
                                            height: getVerticalSize(143),
                                            width: getHorizontalSize(141),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8)),
                                            alignment: Alignment.topRight),
                                        Text("Suzuki Swift Force Gurkha",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelMedium),
                                        Opacity(
                                            opacity: 0.5,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                child: Text("Rs. 5,85,000",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelSmallOnPrimaryContainer)))
                                      ]),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapViewcomparison(context);
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 98.0),
                                      child: Container(
                                        decoration: AppDecoration.outline9
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder7),
                                        child: OutlineGradientButton(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(1),
                                              top: getVerticalSize(1),
                                              right: getHorizontalSize(1),
                                              bottom: getVerticalSize(1)),
                                          strokeWidth: getHorizontalSize(1),
                                          gradient: LinearGradient(
                                              begin: Alignment(0.5, 0),
                                              end: Alignment(0.5, 1),
                                              colors: [
                                                appTheme.redA700,
                                                appTheme.redA700
                                                    .withOpacity(0.83)
                                              ]),
                                          corners: Corners(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                              bottomRight: Radius.circular(8)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("View Comparison",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeRedA700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),

                          ]),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
                margin: getMargin(top: 64),
                padding: getPadding(left: 49, right: 49),
                decoration: AppDecoration.fill,
                child: CustomImageView(
                    imagePath: ImageConstant.imgImage41,
                    height: getVerticalSize(108),
                    width: getHorizontalSize(287))),
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
                    height: getVerticalSize(193),
                    child: ListView.separated(
                        padding: getPadding(left: 21, top: 8),
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
                margin: getMargin(left: 21, top: 18, right: 10),
                buttonStyle: CustomButtonStyles.outlineGreenA400.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(45)))),
                buttonTextStyle: CustomTextStyles.titleSmallGreenA400,
                onTap: () {
                  onTapViewupcoming(context);
                }),
            Padding(
                padding: getPadding(top: 60),
                child: Text("Photos",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            GestureDetector(
              onTap: () {
                onTapViewPhotos(context);
              },
              child: Padding(
                padding: getPadding(left: 16, top: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgDownload21168x224,
                                height: getVerticalSize(168),
                                width: getHorizontalSize(224),
                                alignment: Alignment.topCenter),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 4),
                                        child: Text("Maruti Suzuki Fronx",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeBlueA700_1)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSolaralbumbold,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 38, bottom: 3)),
                                    Padding(
                                      padding: getPadding(left: 7, bottom: 3),
                                      child: Text("100",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallGray80012),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgDownload21168x224,
                                height: getVerticalSize(168),
                                width: getHorizontalSize(224),
                                alignment: Alignment.topCenter),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 4),
                                        child: Text("Maruti Suzuki Fronx",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeBlueA700_1)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSolaralbumbold,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 38, bottom: 3)),
                                    Padding(
                                      padding: getPadding(left: 7, bottom: 3),
                                      child: Text("100",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallGray80012),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
                padding: getPadding(top: 12),
                child: Text("Videos",
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
          ],
        ),
      ),
    );
  }

  onTapGgmenuleft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameThirteenScreen);
  }

  onTapViewPhotos(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.photosScreen);
  }

  onTapNews(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newsPage);
  }

  onTapClaritynotifica(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwoScreen);
  }

  onTapnotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationtab);
  }

  onTapMdilocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameOneScreen);
  }

  onTapColumnclock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameSixtysixScreen);
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

  onTapDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  onTapViewupcoming(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }
  onTapViewcomparison(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }
}

//Location Bottom Sheets
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
                  crossAxisCount: 4, // Increase the axis count
                  crossAxisSpacing: 5.0, // Adjust the spacing between columns
                  mainAxisSpacing: 5.0, // Adjust the spacing between rows
                ),
                itemCount: yourDataList.length, // Number of items in the grid
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
