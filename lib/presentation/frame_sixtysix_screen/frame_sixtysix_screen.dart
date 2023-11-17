import '../frame_sixtysix_screen/widgets/gridmg_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class FrameSixtysixScreen extends StatelessWidget {
  const FrameSixtysixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: getPadding(top: 14, bottom: 14),
            decoration: AppDecoration.fill1,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              CustomAppBar(
                  height: getVerticalSize(24),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16),
                      onTap: () {
                        onTapArrowleft21(context);
                      }),
                  title: Padding(
                      padding: getPadding(left: 8),
                      child: Text("See search Result",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleMedium))),
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
              Padding(
                  padding: getPadding(left: 22, top: 6),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgDownload22,
                            height: getVerticalSize(31),
                            width: getHorizontalSize(76),
                            margin: getMargin(top: 12, bottom: 8),
                            onTap: () {
                              onTapImgDownloadtwentyt(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: getSize(52),
                            width: getSize(52),
                            margin: getMargin(left: 28)),
                        CustomImageView(
                            imagePath: ImageConstant.imgDownload42,
                            height: getVerticalSize(33),
                            width: getHorizontalSize(60),
                            margin: getMargin(left: 42, top: 10, bottom: 8)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImages61,
                            height: getVerticalSize(34),
                            width: getHorizontalSize(47),
                            margin: getMargin(left: 44, top: 9, bottom: 8))
                      ])),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: getPadding(left: 47, right: 25),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tata",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.labelMedium),
                            Padding(
                                padding: getPadding(left: 46, bottom: 1),
                                child: Text("Maruti Suzuki",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelMedium)),
                            Padding(
                                padding: getPadding(left: 41, top: 1),
                                child: Text("Hyndai",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelMedium)),
                            Spacer(),
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("Honda",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelMedium))
                          ]))),
              Padding(
                  padding: getPadding(left: 32, top: 33),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgD06f9bc82a50b58,
                            height: getVerticalSize(43),
                            width: getHorizontalSize(44)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage45,
                            height: getSize(40),
                            width: getSize(40),
                            margin: getMargin(left: 50, top: 3)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage46,
                            height: getVerticalSize(40),
                            width: getHorizontalSize(72),
                            margin: getMargin(left: 45, top: 3)),
                        CustomImageView(
                            imagePath: ImageConstant.imgOgikia1,
                            height: getVerticalSize(32),
                            width: getHorizontalSize(58),
                            margin: getMargin(left: 27, top: 7, bottom: 4))
                      ])),
              Padding(
                  padding: getPadding(left: 36, top: 9),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Skoda",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium),
                        Spacer(flex: 30),
                        Text("Mahindra",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium),
                        Spacer(flex: 31),
                        Text("Renault",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium),
                        Spacer(flex: 37),
                        Text("Kia",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup37929,
                  height: getVerticalSize(40),
                  width: getHorizontalSize(330),
                  margin: getMargin(top: 43)),
              Expanded(
                child: Padding(
                  padding: getPadding(left: 27, top: 14, right: 25, bottom: 14),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(18),
                          crossAxisCount: 4,
                          mainAxisSpacing: getHorizontalSize(69),
                          crossAxisSpacing: getHorizontalSize(69)),
                      physics: BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GridmgItemWidget();
                      }),
                ),
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
  onTapArrowleft21(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the newCarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the newCarScreen.
  onTapImgDownloadtwentyt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }
}
