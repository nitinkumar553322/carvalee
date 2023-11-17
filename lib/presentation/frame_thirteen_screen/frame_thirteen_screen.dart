import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class FrameThirteenScreen extends StatelessWidget {
  FrameThirteenScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: getVerticalSize(
            44,
          ),
          leadingWidth: 41,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            imagePath: ImageConstant.imgEntypopricetag,
            margin: getMargin(
              left: 17,
              top: 10,
              bottom: 10,
            ),
          ),
          title: AppbarSubtitle3(
            text: "Home",
            margin: getMargin(
              left: 12,
            ),
          ),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 4,
            ),
            child: Container(
              height: getVerticalSize(
                754,
              ),
              width: getHorizontalSize(
                280,
              ),
              margin: getMargin(
                right: 1,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(
                        left: 15,
                        right: 15,
                      ),
                      decoration: AppDecoration.fill1.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ExpansionTile(
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant
                                      .imgEntypopricetagGray800,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  margin: getMargin(
                                    bottom: 3,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                    top: 3,
                                    bottom: 2,
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
                            childrenPadding: EdgeInsets.only(left:25), //children padding
                            children: [
                              ListTile(
                                title: Text("Find New Car"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("Upcoming Cars"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("Compare Cars"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("On- Road Cars"),
                                onTap: (){
                                  //action on press
                                },
                              ),




                              //more child menu
                            ],
                          ),
                          ExpansionTile(
                            title:  Padding(
                              padding: getPadding(
                                left: 1,
                                top: 14,
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
                            childrenPadding: EdgeInsets.only(left:25), //children padding
                            children: [
                              ListTile(
                                title: Text("Find Used Cars"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("Explore Used Cars"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("Check Car Valuation"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("My Listing"),
                                onTap: (){
                                  //action on press
                                },
                              ),




                              //more child menu
                            ],
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 16,
                            ),
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
                          Padding(
                            padding: getPadding(
                              top: 16,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath:
                                  ImageConstant.imgBasilwalletoutline,
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
                          ExpansionTile(
                            title: Row(
                              children: [
                                CustomImageView(
                                  svgPath:
                                  ImageConstant.imgMdifilereportoutline,
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
                            childrenPadding: EdgeInsets.only(left:25), //children padding
                            children: [
                              ListTile(
                                title: Text("News"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("Tip & Advice"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("Favourite"),
                                onTap: (){
                                  //action on press
                                },
                              ),
                              ListTile(
                                title: Text("Privacy Policy"),
                                onTap: (){
                                  //action on press
                                },
                              ),




                              //more child menu
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Padding(
                                padding: getPadding(
                                  left: 1,
                                  top: 15,
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
                                    ),
                                    Padding(
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
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 14,
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
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 2,
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
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    top: 29,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            style: CustomTextStyles
                                                .labelMediumBlack90010,
                                          ),
                                        ),
                                      ),
                                      CustomSwitch(
                                        margin: getMargin(
                                          left: 16,
                                        ),
                                        value: isSelectedSwitch,
                                        onChange: (value) {
                                          isSelectedSwitch = value;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 48,
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
                              left: 1,
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
                                    style:
                                        CustomTextStyles.labelMediumGray80003,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
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
                              left: 3,
                              top: 125,
                            ),
                            child: Text(
                              "Connect with us",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelMediumBlack90010_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.3,
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
                  CustomImageView(
                    svgPath: ImageConstant.imgJamfacebookcircle,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: getMargin(
                      left: 18,
                      bottom: 122,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgTypcnsocialli,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: getMargin(
                      left: 46,
                      bottom: 122,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgJamtwittercircle,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: getMargin(
                      left: 74,
                      bottom: 122,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgMdiinstagram,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: getMargin(
                      left: 102,
                      bottom: 122,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgJamyoutubecircle,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    alignment: Alignment.bottomCenter,
                    margin: getMargin(
                      bottom: 122,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgShare,
                    height: getSize(
                      12,
                    ),
                    width: getSize(
                      12,
                    ),
                    alignment: Alignment.bottomRight,
                    margin: getMargin(
                      right: 109,
                      bottom: 126,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: getSize(
                        16,
                      ),
                      width: getSize(
                        16,
                      ),
                      margin: getMargin(
                        right: 106,
                        bottom: 124,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8,
                          ),
                        ),
                        border: Border.all(
                          color: appTheme.gray800,
                          width: getHorizontalSize(
                            1,
                          ),
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
    );
  }
}
