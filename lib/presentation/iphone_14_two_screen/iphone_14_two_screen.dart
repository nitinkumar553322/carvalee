import '../iphone_14_two_screen/widgets/listgroup_item_widget.dart';
import 'package:carwalee/core/app_export.dart';

import 'package:flutter/material.dart';

class Iphone14TwoScreen extends StatelessWidget {
  const Iphone14TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 17, right: 17),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(left: 1, top: 12, bottom: 5),
                  child: Row(children: [
                    Padding(
                      padding: getPadding(bottom: 6),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getVerticalSize(118),
                              width: getHorizontalSize(47),
                              margin: getMargin(left: 1),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUnsplashplkgcsboiw4,
                                        height: getSize(42),
                                        width: getSize(42),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(21)),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(top: 6)),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUnsplashoqtafyt5ktw,
                                        height: getSize(42),
                                        width: getSize(42),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(21)),
                                        alignment: Alignment.bottomLeft),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding:
                                            getPadding(left: 28, bottom: 29),
                                        child: ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(51));
                                            },
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return ListgroupItemWidget();
                                            }),
                                      ),
                                    ),
                                  ]),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplasht0nojypgbok,
                              height: getSize(42),
                              width: getSize(42),
                              radius: BorderRadius.circular(
                                getHorizontalSize(21),
                              ),
                              margin: getMargin(top: 29),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: getPadding(left: 8, top: 2),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Loren Epsom",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900),
                            SizedBox(
                                width: getHorizontalSize(239),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit\ndolor sit amet, consectetur adipiscing elit.  ",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmallOutfit)),
                            Padding(
                                padding: getPadding(top: 25),
                                child: Text("Loren Epsom",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900)),
                            SizedBox(
                                width: getHorizontalSize(239),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit\ndolor sit amet, consectetur adipiscing elit.  ",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmallOutfit)),
                            Padding(
                                padding: getPadding(top: 25),
                                child: Text("Loren Epsom",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900)),
                            SizedBox(
                              width: getHorizontalSize(239),
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit\ndolor sit amet, consectetur adipiscing elit.  ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallOutfit),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: getPadding(left: 17, top: 21, bottom: 12),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("1m ago.",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    CustomTextStyles.labelLargeOutfitGray600),
                            Padding(
                                padding: getPadding(top: 57),
                                child: Text("1m ago.",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeOutfitGray600)),
                            Padding(
                              padding: getPadding(top: 57),
                              child: Text("1m ago.",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.labelLargeOutfitGray600),
                            ),
                          ]),
                    ),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
