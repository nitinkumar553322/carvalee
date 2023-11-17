import '../car_detail_3_features_page/widgets/list1_item_widget.dart';
import '../car_detail_3_features_page/widgets/list_one1_item_widget.dart';
import '../car_detail_3_features_page/widgets/listrectangleei1_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CarDetail3FeaturesPage extends StatefulWidget {
  const CarDetail3FeaturesPage({Key? key}) : super(key: key);

  @override
  CarDetail3FeaturesPageState createState() => CarDetail3FeaturesPageState();
}

// ignore_for_file: must_be_immutable
class CarDetail3FeaturesPageState extends State<CarDetail3FeaturesPage>
    with AutomaticKeepAliveClientMixin<CarDetail3FeaturesPage> {
  TextEditingController priceoneController = TextEditingController();

  TextEditingController pricetwoController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
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
                                    child: Text("Safety",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900SemiBold)),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 13, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Overspeed Warning",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Emergency Brake Light Flashing",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Puncture Repair Kit",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 8, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("NCAP Rating",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Airbags",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "Middle rear three-Point Seatbelt",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Middle Rear Head Rest",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "Tyre Pressure Monitoring Sysem (TPMS)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Child Seat Anchor Points",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Seat Belt Warning",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                    padding: getPadding(
                                        left: 17, top: 13, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Anti-Lock Braking System (ABS)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "Electronic Brake Force Distribution (EBD)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Brake Assist (BA)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 8, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "Electronic Stability Program (ESP)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Hill Hold Control",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "Traction Control System (TC/TCS)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Hill Descent Control",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding: getPadding(
                                        left: 17, top: 13, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Engine immobilizer",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Central Locking",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Speed Sensing Door Lock",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 8, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Child Safety Lock",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding: getPadding(
                                        left: 17, top: 13, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Umbrella Storage In Door",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Air Conditoner",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Front AC",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rear AC",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Third Row AC",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Heater",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Vanity Mirrors on Sun Visors",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Cabin-Boot Access",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Anti-glare Mirrors",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Parking Assist",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 11, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Parking Sensors",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge))
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                  "Cruise Control",
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
                                                            color: appTheme
                                                                .gray800))
                                                  ])),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 41),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Steering Adjustment ",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: getPadding(top: 41),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Headlight & Ignition on Reminder",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge),
                                                              Text("1",
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
                                                            color: appTheme
                                                                .gray800))
                                                  ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                            getPadding(top: 14),
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
                                    padding: getPadding(
                                        left: 17, top: 13, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Find My Cars",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Check Vehicle Status Via App",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Geo-Fence",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 8, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Emergency Call",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Over the Air (OTA Updates)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Remove AC On/Off Via App",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Remote Car Lock/Unlock Via App",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "Remote Sunroof Open/Close Via App",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Remote Car Light Flashing & Honking Via App",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 74, bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Alexa Compatibility",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                    padding: getPadding(
                                        left: 17, top: 13, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Driver Seat Adjustments",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge))
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800))
                                                  ])),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: getPadding(top: 123),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Leather wrapped Gear Knob",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 41),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Ventilated Seat Type",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: getPadding(top: 41),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Seat Upholstery",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                  "Driver Armrest",
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
                                                            color: appTheme
                                                                .gray800))
                                                  ])),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                            color: appTheme
                                                                .gray800))
                                                  ])),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: getPadding(top: 82),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 82),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                            padding: getPadding(
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
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 123),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Rear Passenger Seats Type",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                            AppDecoration
                                                                .txtFill,
                                                        child: Text("Storage",
                                                            overflow:
                                                                TextOverflow
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                  "Cooled Glove Box",
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                  "Sunglass holder",
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
                                                            color: appTheme
                                                                .gray800)),
                                                    SizedBox(
                                                        height:
                                                            getVerticalSize(62),
                                                        width: double.maxFinite,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
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
                                                                                left: 18,
                                                                                top: 6,
                                                                                right: 18,
                                                                                bottom: 6),
                                                                            decoration: AppDecoration.txtFill,
                                                                            child: Text("Doors, Windows, Mirrors & Wipers", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900SemiBold)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 17, top: 13),
                                                                            child: Text("Outside Rear View Mirrors Color (ORVMs)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                      ])),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          right:
                                                                              19),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)))
                                                            ])),
                                                    Container(
                                                        height: getVerticalSize(
                                                            574),
                                                        width: double.maxFinite,
                                                        margin:
                                                            getMargin(top: 15),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
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
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Scuff Plates", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ])),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(top: 123),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Padding(padding: getPadding(top: 1), child: Text("One Touch Up", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                              Padding(padding: getPadding(bottom: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 13),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(bottom: 246),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Padding(padding: getPadding(top: 1), child: Text("Rear Wiper", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                              Padding(padding: getPadding(bottom: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 13),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(bottom: 41),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Padding(padding: getPadding(top: 1), child: Text("Rain  sensing Wipers ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                              Padding(padding: getPadding(bottom: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 13),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(top: 41),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Power Windows", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(top: 164),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Padding(padding: getPadding(top: 1), child: Text("Adjustable ORVM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                              Padding(padding: getPadding(bottom: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 13),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(bottom: 164),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Padding(padding: getPadding(top: 1), child: Text("Rain Defogger", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                              Padding(padding: getPadding(bottom: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 13),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(bottom: 205),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Exterior Door Handles", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
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
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Door Pockets", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ])),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(top: 82),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 18),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Padding(padding: getPadding(bottom: 1), child: Text("One Touch Down", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                              Padding(padding: getPadding(top: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900_1))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 13),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(top: 246),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Padding(padding: getPadding(top: 1), child: Text("Rear Defogger", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                              Padding(padding: getPadding(bottom: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 13),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(bottom: 82),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Exterior Door Handles", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(top: 205),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Turn Indicators on ORVM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child:
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  123),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800),
                                                                                Padding(
                                                                                    padding: getPadding(left: 17, top: 7, right: 19),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                      Padding(padding: getPadding(top: 1), child: Text("Rear Wiper", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                                      Padding(padding: getPadding(bottom: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                                    ])),
                                                                                Padding(padding: getPadding(top: 13), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                              ])))
                                                            ]))
                                                  ])),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 17,
                                                            right: 19),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  "Interior Colours",
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
                                                    Container(
                                                        height: getVerticalSize(
                                                            246),
                                                        width: double.maxFinite,
                                                        margin:
                                                            getMargin(top: 14),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
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
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Rear Armrest", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ])),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(bottom: 82),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Front Seatbacks Pockets", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(top: 41),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Padding(padding: getPadding(top: 1), child: Text("Folding Rear Seat", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)),
                                                                              Padding(padding: getPadding(bottom: 1), child: Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 13),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Padding(
                                                                      padding: getPadding(bottom: 41),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Head rests", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
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
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray800),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 17,
                                                                                top: 7,
                                                                                right: 19),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                              Text("Rear head rests", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                              Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 14),
                                                                            child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
                                                                      ])),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child:
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  82),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800),
                                                                                Padding(
                                                                                    padding: getPadding(left: 17, top: 8, right: 18),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                      Text("Split Rear Seat", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge),
                                                                                      Text("-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900_1)
                                                                                    ])),
                                                                                Padding(padding: getPadding(top: 13), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray800))
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                            AppDecoration
                                                                .txtFill,
                                                        child: Text("Exteriors",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900SemiBold)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 17, top: 13),
                                                        child: Text(
                                                            "Sunroof / Moonroof",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge))
                                                  ])),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 19),
                                                  child: Text("-",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .labelLarge)))
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                            color: appTheme
                                                                .gray800))
                                                  ])),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 41),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Body Kit",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: getPadding(top: 41),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Body Coloured Bumpers",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800))
                                                  ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                            color: appTheme
                                                                .gray800))
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
                                    padding: getPadding(
                                        left: 17, top: 13, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Headlights",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Automatic Head Lamps",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Follow me Home Headlamps",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 8, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Tail Lights ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge),
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
                                    padding:
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Daytime Running Lights ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Fog Lights",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Ambient Interior Lighting",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Puddle Lamps",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Cabin Lamps",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Lights on Vanity Mirrors",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Rear Reading Lamp",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Glove Box Lamp",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                        getPadding(left: 17, top: 7, right: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Headlight Height Adjuster",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("-",
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                            AppDecoration
                                                                .txtFill,
                                                        child: Text(
                                                            "Instrumentation",
                                                            overflow:
                                                                TextOverflow
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
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
                                                                  "Instrument Cluster",
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                          top:
                                                                              1),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                  "Gear Indicator",
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                  "Shift Indicator",
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                            color: appTheme
                                                                .gray800)),
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                            color: appTheme
                                                                .gray800))
                                                  ])),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 200),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width: double
                                                                .maxFinite,
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 6,
                                                                right: 18,
                                                                bottom: 6),
                                                            decoration:
                                                                AppDecoration
                                                                    .txtFill,
                                                            child: Text(
                                                                "Entertainment , Information & Communication",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Smart Connectivity",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Display",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                            padding: getPadding(
                                                                top: 14),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Speakers",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Steering Mounted Controls",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                left: 17,
                                                                top: 7,
                                                                right: 19),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Voice Command",
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
                                                            padding: getPadding(
                                                                top: 14),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "GPS Navigation System",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Bluetooth Compatibility",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Aux Compatibility",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                left: 17,
                                                                top: 7,
                                                                right: 19),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "AM/FM Radio",
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
                                                            padding: getPadding(
                                                                top: 14),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "USB Compatibility",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Wireless Charger",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Ipod Compatibility",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                left: 17,
                                                                top: 7,
                                                                right: 19),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Head Unit Size",
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
                                                            padding: getPadding(
                                                                top: 14),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800)),
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
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "CD Player",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .gray800))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 136),
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
                                                        Container(
                                                            width: double
                                                                .maxFinite,
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 6,
                                                                right: 18,
                                                                bottom: 6),
                                                            decoration:
                                                                AppDecoration
                                                                    .txtFill,
                                                            child: Text(
                                                                "Manufacturer Warranty",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900SemiBold)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 17,
                                                                top: 15),
                                                            child: Text(
                                                                "Battery Warranty Years",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: getVerticalSize(73),
                                                  width: double.maxFinite,
                                                  margin: getMargin(bottom: 82),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            32),
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
                                                            alignment: Alignment
                                                                .center,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  19),
                                                                          child: Text(
                                                                              "-",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.labelLarge))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              17,
                                                                          top:
                                                                              23,
                                                                          right:
                                                                              19),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text("Batery Warranty (Kilometres)",
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
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 41),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                            padding: getPadding(
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
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color:
                                                            appTheme.gray800),
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
                                                                  "Warranty (Kilometres)",
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
                                                            getPadding(top: 14),
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
                                        ])),
                                Container(
                                    height: getVerticalSize(246),
                                    width: getHorizontalSize(317),
                                    margin: getMargin(top: 44),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle250,
                                                        height:
                                                            getVerticalSize(71),
                                                        width:
                                                            getHorizontalSize(
                                                                311)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 32),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgDocument,
                                                                  height:
                                                                      getSize(
                                                                          51),
                                                                  width:
                                                                      getSize(
                                                                          51),
                                                                  margin: getMargin(
                                                                      top: 2,
                                                                      bottom:
                                                                          75)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              11),
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                            "Maruti Suzuki Alto K10 Brochure",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: theme.textTheme.titleMedium),
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(235),
                                                                            margin: getMargin(top: 2),
                                                                            child: Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the", maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumGray70001)),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Padding(padding: getPadding(top: 21), child: Text("Download Brochure", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallRed600_1)))
                                                                      ]))
                                                            ]))
                                                  ])),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgDownload,
                                              height: getSize(42),
                                              width: getSize(42),
                                              alignment: Alignment.bottomLeft,
                                              margin: getMargin(left: 72))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18, top: 28),
                                        child: Text("Other Versions (2)",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.titleSmall))),
                                Padding(
                                    padding: getPadding(
                                        left: 19, top: 19, right: 11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Maruti Suzuki Alto A10",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlack900SemiBold),
                                          Text("Rs. 8.04 Lakh",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlueA700SemiBold)
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 19, top: 2),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Rs. 3.05 Cr",
                                                  style: CustomTextStyles
                                                      .labelMediumGray80010),
                                              TextSpan(
                                                  text: " ",
                                                  style: CustomTextStyles
                                                      .bodySmallGray800_2),
                                              TextSpan(
                                                  text:
                                                      "on Road Price (GST), Gaziabad",
                                                  style: CustomTextStyles
                                                      .bodySmallGray800Light)
                                            ]),
                                            textAlign: TextAlign.left))),
                                Padding(
                                    padding: getPadding(
                                        left: 18, top: 12, right: 12),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Maruti Suzuki Alto A10",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlack900SemiBold),
                                          Text("Rs. 8.04 Lakh",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlueA700SemiBold)
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18, top: 2),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Rs. 3.05 Cr",
                                                  style: CustomTextStyles
                                                      .labelMediumGray80010),
                                              TextSpan(
                                                  text: " ",
                                                  style: CustomTextStyles
                                                      .bodySmallGray800_2),
                                              TextSpan(
                                                  text:
                                                      "on Road Price (GST), Gaziabad",
                                                  style: CustomTextStyles
                                                      .bodySmallGray800Light)
                                            ]),
                                            textAlign: TextAlign.left))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 19, top: 91),
                                        child: Text("Alternatives",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.titleLarge))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 21, top: 12),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "Showing similar cars in same ‘",
                                                  style: CustomTextStyles
                                                      .bodySmall12),
                                              TextSpan(
                                                  text: "Hatchback’ category",
                                                  style: CustomTextStyles
                                                      .labelLargeBlack900SemiBold_1)
                                            ]),
                                            textAlign: TextAlign.left))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(left: 22, top: 29),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                  padding: getPadding(
                                                      left: 9, right: 9),
                                                  decoration: AppDecoration
                                                      .outline
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder3),
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
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    131),
                                                            width:
                                                                getHorizontalSize(
                                                                    136),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      child: Text(
                                                                          "Rs.",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              CustomTextStyles.labelLargeBlack900)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: SizedBox(
                                                                          height: getVerticalSize(131),
                                                                          width: getHorizontalSize(136),
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            Align(
                                                                                alignment: Alignment.bottomLeft,
                                                                                child: Padding(padding: getPadding(left: 24), child: Text("4.57 Lakh", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900))),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: GestureDetector(
                                                                                    onTap: () {
                                                                                      onTapColumnmarutialt(context);
                                                                                    },
                                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgMarutialto1667634241, height: getVerticalSize(83), width: getHorizontalSize(133), margin: getMargin(left: 3)),
                                                                                      Padding(padding: getPadding(top: 7), child: Text("Hyundai Santro 2023", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall12_1)),
                                                                                      Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 4, right: 1), child: Text("Onwards", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall9)))
                                                                                    ])))
                                                                          ])))
                                                                ])),
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxtComparewithalto(
                                                                  context);
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            11),
                                                                child: Text(
                                                                    "Compare with Alto K10",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelSmall))),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    135),
                                                            controller:
                                                                priceoneController,
                                                            margin: getMargin(
                                                                top: 13,
                                                                bottom: 14),
                                                            contentPadding:
                                                                getPadding(
                                                                    left: 18,
                                                                    top: 3,
                                                                    right: 18,
                                                                    bottom: 3),
                                                            textStyle: theme
                                                                .textTheme
                                                                .labelSmall!,
                                                            hintText:
                                                                "View Price Breakup",
                                                            hintStyle: theme
                                                                .textTheme
                                                                .labelSmall!,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            defaultBorderDecoration:
                                                                TextFormFieldStyleHelper
                                                                    .outlineBlueA700,
                                                            enabledBorderDecoration:
                                                                TextFormFieldStyleHelper
                                                                    .outlineBlueA700,
                                                            focusedBorderDecoration:
                                                                TextFormFieldStyleHelper
                                                                    .outlineBlueA700,
                                                            disabledBorderDecoration:
                                                                TextFormFieldStyleHelper
                                                                    .outlineBlueA700)
                                                      ])),
                                              SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  padding: getPadding(left: 14),
                                                  child: IntrinsicWidth(
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .outline
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder3),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                9),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          SizedBox(
                                                                              height: getVerticalSize(131),
                                                                              width: getHorizontalSize(136),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                Align(alignment: Alignment.bottomLeft, child: Text("Rs.", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900)),
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: SizedBox(
                                                                                        height: getVerticalSize(131),
                                                                                        width: getHorizontalSize(136),
                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                          Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(left: 24), child: Text("4.57 Lakh", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900))),
                                                                                          Align(
                                                                                              alignment: Alignment.center,
                                                                                              child: GestureDetector(
                                                                                                  onTap: () {
                                                                                                    onTapColumnmarutialt1(context);
                                                                                                  },
                                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                    CustomImageView(imagePath: ImageConstant.imgMarutialto1667634241, height: getVerticalSize(83), width: getHorizontalSize(133), margin: getMargin(left: 3)),
                                                                                                    Padding(padding: getPadding(top: 7), child: Text("Hyundai Santro 2023", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall12_1)),
                                                                                                    Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 4, right: 1), child: Text("Onwards", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall9)))
                                                                                                  ])))
                                                                                        ])))
                                                                              ])),
                                                                          Container(
                                                                              height: getVerticalSize(131),
                                                                              width: getHorizontalSize(136),
                                                                              margin: getMargin(left: 33),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                Align(alignment: Alignment.bottomLeft, child: Text("Rs.", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900)),
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: SizedBox(
                                                                                        height: getVerticalSize(131),
                                                                                        width: getHorizontalSize(136),
                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                          Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(left: 24), child: Text("4.57 Lakh", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.labelLargeBlack900))),
                                                                                          Align(
                                                                                              alignment: Alignment.center,
                                                                                              child: GestureDetector(
                                                                                                  onTap: () {
                                                                                                    onTapColumnmarutialt2(context);
                                                                                                  },
                                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                    CustomImageView(imagePath: ImageConstant.imgMarutialto1667634241, height: getVerticalSize(83), width: getHorizontalSize(133), margin: getMargin(left: 3)),
                                                                                                    Padding(padding: getPadding(top: 7), child: Text("Hyundai Santro 2023", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall12_1)),
                                                                                                    Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 5, right: 1), child: Text("Onwards", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodySmall9)))
                                                                                                  ])))
                                                                                        ])))
                                                                              ]))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 9,
                                                                        top:
                                                                            11),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          GestureDetector(
                                                                              onTap: () {
                                                                                onTapTxtComparewithalto1(context);
                                                                              },
                                                                              child: Text("Compare with Alto K10", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelSmall)),
                                                                          GestureDetector(
                                                                              onTap: () {
                                                                                onTapTxtComparewithalto2(context);
                                                                              },
                                                                              child: Padding(padding: getPadding(left: 54), child: Text("Compare with Alto K10", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelSmall)))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 13,
                                                                        bottom:
                                                                            14),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          CustomTextFormField(
                                                                              width: getHorizontalSize(135),
                                                                              controller: pricetwoController,
                                                                              contentPadding: getPadding(left: 18, top: 3, right: 18, bottom: 3),
                                                                              textStyle: theme.textTheme.labelSmall!,
                                                                              hintText: "View Price Breakup",
                                                                              hintStyle: theme.textTheme.labelSmall!,
                                                                              defaultBorderDecoration: TextFormFieldStyleHelper.outlineBlueA700,
                                                                              enabledBorderDecoration: TextFormFieldStyleHelper.outlineBlueA700,
                                                                              focusedBorderDecoration: TextFormFieldStyleHelper.outlineBlueA700,
                                                                              disabledBorderDecoration: TextFormFieldStyleHelper.outlineBlueA700),
                                                                          CustomOutlinedButton(
                                                                              text: "View Price Breakup",
                                                                              margin: getMargin(left: 34),
                                                                              buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(getHorizontalSize(135), getVerticalSize(22)))),
                                                                              buttonTextStyle: theme.textTheme.labelSmall!,
                                                                              onTap: () {
                                                                                onTapViewprice(context);
                                                                              })
                                                                        ]))
                                                              ])))),
                                              Container(
                                                  height: getVerticalSize(207),
                                                  width: getHorizontalSize(30),
                                                  margin: getMargin(left: 14),
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3)),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: appTheme
                                                                .black900
                                                                .withOpacity(
                                                                    0.25),
                                                            spreadRadius:
                                                                getHorizontalSize(
                                                                    2),
                                                            blurRadius:
                                                                getHorizontalSize(
                                                                    2),
                                                            offset:
                                                                Offset(0, 0))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18, top: 22),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Top",
                                                  style: theme
                                                      .textTheme.titleLarge),
                                              TextSpan(
                                                  text:
                                                      " Popular cars in india",
                                                  style: CustomTextStyles
                                                      .titleLargeBold)
                                            ]),
                                            textAlign: TextAlign.left))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                        height: getVerticalSize(181),
                                        child: ListView.separated(
                                            padding:
                                                getPadding(left: 20, top: 6),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(14));
                                            },
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return Listrectangleei1ItemWidget();
                                            }))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18, top: 46),
                                        child: Text("Images",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.titleLarge))),
                                Container(
                                    height: getVerticalSize(208),
                                    width: getHorizontalSize(372),
                                    margin: getMargin(top: 5),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 40),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgDownload11,
                                                            height:
                                                                getVerticalSize(
                                                                    168),
                                                            width:
                                                                getHorizontalSize(
                                                                    224)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgDownload21,
                                                            height:
                                                                getVerticalSize(
                                                                    168),
                                                            width:
                                                                getHorizontalSize(
                                                                    130))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 18),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                            margin: getMargin(
                                                                left: 9)),
                                                        Container(
                                                            height: getSize(54),
                                                            width: getSize(54),
                                                            margin: getMargin(
                                                                left: 9),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgRectangle261,
                                                                      height:
                                                                          getSize(
                                                                              54),
                                                                      width:
                                                                          getSize(
                                                                              54),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  9),
                                                                          child: Text(
                                                                              "60+",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: CustomTextStyles.titleMediumPrimary)))
                                                                ]))
                                                      ])))
                                        ])),
                                Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 47),
                                    padding: getPadding(left: 48, right: 48),
                                    decoration: AppDecoration.fill,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgImage41,
                                        height: getVerticalSize(108),
                                        width: getHorizontalSize(287))),
                                Padding(
                                    padding: getPadding(top: 46),
                                    child: Text(" Just Launched cars in india",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleLarge)),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                        height: getVerticalSize(187),
                                        child: ListView.separated(
                                            padding:
                                                getPadding(left: 16, top: 12),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(14));
                                            },
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return List1ItemWidget();
                                            }))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 17, top: 49),
                                        child: Text(" Upcoming launches",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.titleLarge))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                        height: getVerticalSize(196),
                                        child: ListView.separated(
                                            padding:
                                                getPadding(left: 20, top: 21),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(14));
                                            },
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return ListOne1ItemWidget();
                                            }))),
                                CustomOutlinedButton(
                                    text: "View upcoming all Luanches",
                                    margin:
                                        getMargin(left: 20, top: 18, right: 11),
                                    buttonStyle: CustomButtonStyles
                                        .outlineGreenA400
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(double.maxFinite,
                                                        getVerticalSize(45)))),
                                    buttonTextStyle:
                                        CustomTextStyles.titleSmallGreenA400,
                                    onTap: () {
                                      onTapViewupcoming(context);
                                    }),
                                Container(
                                    margin: getMargin(left: 2, top: 71),
                                    padding: getPadding(
                                        left: 16,
                                        top: 17,
                                        right: 16,
                                        bottom: 17),
                                    decoration: AppDecoration.fill,
                                    child: CustomElevatedButton(
                                        text: "Get New Offers",
                                        margin: getMargin(bottom: 1),
                                        buttonStyle: CustomButtonStyles
                                            .fillRedA700
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(45)))),
                                        buttonTextStyle:
                                            CustomTextStyles.bodyMediumPrimary,
                                        onTap: () {
                                          onTapGetnewoffers(context);
                                        }))
                              ]))
                    ])))));
  }

  /// Navigates to the santroScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the santroScreen.
  onTapColumnmarutialt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the santroScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the santroScreen.
  onTapColumnmarutialt1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  /// Navigates to the santroScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the santroScreen.
  onTapColumnmarutialt2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the priceBreakupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the priceBreakupScreen.
  onTapViewprice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }

  /// Navigates to the newCarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the newCarScreen.
  onTapViewupcoming(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  /// Navigates to the formPopUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the formPopUpScreen.
  onTapGetnewoffers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPopUpScreen);
  }
}
