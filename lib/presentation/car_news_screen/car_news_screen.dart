import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

import '../car_detail_page_screen/widgets/list_one3_item_widget.dart';

// ignore_for_file: must_be_immutable
class CarNewsScreen extends StatefulWidget {
  CarNewsScreen({Key? key}) : super(key: key);

  @override
  State<CarNewsScreen> createState() => _CarNewsScreenState();
}

class _CarNewsScreenState extends State<CarNewsScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;
  @override
  void initState() {
    super.initState();
    tabviewController = TabController(
      length: 3, // Number of tabs
      vsync: this, // Provide the SingleTickerProviderStateMixin
    );
  }

  @override
  void dispose() {
    tabviewController.dispose(); // Dispose the TabController
    super.dispose();
  }

  TextEditingController newoffersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.primary,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          height: getVerticalSize(48),
          leadingWidth: 40,
          leading: AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 16, top: 12, bottom: 12),
              onTap: () {
                onTapArrowleft48(context);
              }),
          title: AppbarSubtitle3(text: "News", margin: getMargin(left: 16))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: getHorizontalSize(327),
                margin: getMargin(left: 18, right: 44),
                child: Text(
                    "Alto K10 versions, on-road prices\ntop 10 cities in india",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleLargeBlack900_1)),
            Padding(
                padding: getPadding(left: 24, top: 14),
                child: Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse22,
                      height: getSize(40),
                      width: getSize(40),
                      radius: BorderRadius.circular(getHorizontalSize(20)),
                      margin: getMargin(bottom: 2)),
                  Padding(
                      padding: getPadding(left: 8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(left: 2),
                                child: Text("Loren Epsom",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900_1)),
                            Padding(
                                padding: getPadding(top: 4),
                                child: Text("June 28, 2023, 11:52 IST",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall))
                          ]))
                ])),
            CustomImageView(
                imagePath: ImageConstant.imgRectangle76,
                height: getVerticalSize(173),
                width: getHorizontalSize(358),
                margin: getMargin(top: 6)),
            Container(
                width: getHorizontalSize(333),
                margin: getMargin(left: 16, top: 21, right: 40),
                child: Text(
                    "Borem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. ",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmall12_2)),
            Container(
                width: double.maxFinite,
                margin: getMargin(top: 31),
                padding: getPadding(left: 47, right: 47),
                decoration: AppDecoration.fill,
                child: CustomImageView(
                    imagePath: ImageConstant.imgImage41,
                    height: getVerticalSize(108),
                    width: getHorizontalSize(287))),
            Container(
                width: getHorizontalSize(356),
                margin: getMargin(left: 16, top: 25, right: 17),
                child: Text(
                    "Borem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.\n              Curabitur tempor quis eros tempus lacinia. Nam bibendum pellentesque quam a convallis. Sed ut ",
                    maxLines: 13,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmall12_2)),
            CustomOutlinedButton(
                text: "Continue Reading >",
                margin: getMargin(top: 16),
                buttonStyle: CustomButtonStyles.outlineGreenA700TL8.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(getHorizontalSize(161), getVerticalSize(33)))),
                buttonTextStyle: CustomTextStyles.labelLargeGreenA700),
            Container(
                margin: getMargin(left: 20, top: 27, right: 19),
                padding: getPadding(left: 14, top: 9, right: 14, bottom: 9),
                decoration: AppDecoration.outline8
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 10, bottom: 10),
                                    child: Text("Do you Own  a Car or Bike?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage47,
                                    height: getSize(42),
                                    width: getSize(42)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage48,
                                    height: getSize(42),
                                    width: getSize(42))
                              ])),
                      Padding(
                          padding: getPadding(top: 10, bottom: 24),
                          child: Row(children: [
                            CustomOutlinedButton(
                                text: "YES",
                                buttonStyle: CustomButtonStyles
                                    .outlineRedA700TL4
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(getHorizontalSize(86),
                                                    getVerticalSize(35)))),
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallRedA700_1),
                            CustomOutlinedButton(
                                text: "NO",
                                margin: getMargin(left: 17),
                                buttonStyle: CustomButtonStyles
                                    .outlineRedA700TL4
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(getHorizontalSize(86),
                                                    getVerticalSize(35)))),
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallRedA700_1)
                          ]))
                    ])),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: getPadding(left: 18, top: 55),
                    child: Text("Alto K10 Images",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleLargeBlack900_1))),
            Padding(
                padding: getPadding(left: 16, top: 21),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle283,
                          height: getSize(263),
                          width: getSize(263),
                          radius: BorderRadius.circular(getHorizontalSize(10)),
                          margin: getMargin(bottom: 10)),
                      Padding(
                          padding: getPadding(left: 12),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle284,
                                    height: getSize(83),
                                    width: getSize(83),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle285,
                                    height: getSize(83),
                                    width: getSize(83),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10)),
                                    margin: getMargin(top: 12)),
                                Container(
                                    height: getSize(83),
                                    width: getSize(83),
                                    margin: getMargin(top: 12),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle286,
                                              height: getSize(83),
                                              width: getSize(83),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(left: 15),
                                                  child: Text("+50",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .headlineSmall)))
                                        ]))
                              ]))
                    ])),
            Container(
                margin: getMargin(left: 16, top: 48, right: 16),
                padding: getPadding(left: 12, top: 19, right: 12, bottom: 19),
                decoration: AppDecoration.outline8
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(left: 3, right: 6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 9, bottom: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Have a Question about Alto K10?",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleSmall),
                                          Padding(
                                              padding: getPadding(top: 10),
                                              child: Text(
                                                  "10+ Answers from Experts & Owners",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallGreenA700))
                                        ])),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage50,
                                    height: getSize(61),
                                    width: getSize(61))
                              ])),
                      Container(
                          margin: getMargin(top: 19, right: 8, bottom: 1),
                          padding: getPadding(
                              left: 11, top: 10, right: 11, bottom: 10),
                          decoration: AppDecoration.outline17.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMaskgroup18x18,
                                height: getSize(18),
                                width: getSize(18),
                                margin: getMargin(top: 1, bottom: 1)),
                            Padding(
                                padding: getPadding(left: 9, top: 2),
                                child: Text("Type your Question Here",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2))
                          ]))
                    ])),
            Padding(
                padding: getPadding(right: 150, top: 77),
                child: Text("Explore more News ",
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
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10), // A
                tabs: [
                  Tab(
                      child: Text("RELATED NEWS ",
                          overflow: TextOverflow.ellipsis)),
                  Tab(
                      child: Text("POPULAR NEWS",
                          overflow: TextOverflow.ellipsis)),
                  Tab(
                      child: Text("RECENT NEWS ",
                          overflow: TextOverflow.ellipsis)),
                ]),
            SizedBox(
              height: 50,
              child: TabBarView(controller: tabviewController, children: [
                Text(""),
                Text(""),
                Text(""),
              ]),
            ),

            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   padding: getPadding(left: 6, top: 47),
            //   child: IntrinsicWidth(
            //     child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //
            //         ]),
            //   ),
            // ),
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
                // Add any other necessary text style properties here
              ),
            ),
            CustomOutlinedButton(
                text: "Next News",
                margin: getMargin(left: 41, top: 7, bottom: 11),
                buttonStyle: CustomButtonStyles.outlineRedA700.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      getHorizontalSize(135),
                      getVerticalSize(41),
                    ),
                  ),
                ),
                buttonTextStyle: CustomTextStyles.bodyMediumRedA700),
          ],
        ),
      ),
    ));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft48(BuildContext context) {
    Navigator.pop(context);
  }
}
