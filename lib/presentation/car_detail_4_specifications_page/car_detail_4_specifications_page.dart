import '../car_detail_4_specifications_page/widgets/list2_item_widget.dart';
import '../car_detail_4_specifications_page/widgets/list_one2_item_widget.dart';
import '../car_detail_4_specifications_page/widgets/listcurrency1_item_widget.dart';
import '../car_detail_4_specifications_page/widgets/listrectangleei2_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CarDetail4SpecificationsPage extends StatefulWidget {
  const CarDetail4SpecificationsPage({Key? key}) : super(key: key);

  @override
  CarDetail4SpecificationsPageState createState() =>
      CarDetail4SpecificationsPageState();
}

// ignore_for_file: must_be_immutable
class CarDetail4SpecificationsPageState
    extends State<CarDetail4SpecificationsPage>
    with AutomaticKeepAliveClientMixin<CarDetail4SpecificationsPage> {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceoneController = TextEditingController();

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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("165 / 70 R14",
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
                                    height: getVerticalSize(246),
                                    width: getHorizontalSize(317),
                                    margin: getMargin(top: 57),
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
                                                                              7),
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
                                                                            style: CustomTextStyles.titleMediumBold),
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(240),
                                                                            margin: getMargin(left: 4, top: 1),
                                                                            child: Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the", maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeGray70001)),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Padding(padding: getPadding(top: 21), child: Text("Download Brochure", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallRed600)))
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
                                            style: CustomTextStyles
                                                .titleSmallBold))),
                                Padding(
                                    padding: getPadding(
                                        left: 18, top: 18, right: 11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Maruti Suzuki Alto A10",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlack900Bold),
                                          Text("Rs. 8.04 Lakh",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlueA700Bold)
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 17, top: 2),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Rs. 3.05 Cr",
                                                  style: CustomTextStyles
                                                      .labelMediumGray800),
                                              TextSpan(
                                                  text: " ",
                                                  style: CustomTextStyles
                                                      .labelMediumGray800),
                                              TextSpan(
                                                  text:
                                                      "on Road Price (GST), Gaziabad",
                                                  style: CustomTextStyles
                                                      .labelMediumGray800)
                                            ]),
                                            textAlign: TextAlign.left))),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 12, right: 12),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Maruti Suzuki Alto A10",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlack900Bold),
                                          Text("Rs. 8.04 Lakh",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelLargeBlueA700Bold)
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 16, top: 2),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Rs. 3.05 Cr",
                                                  style: CustomTextStyles
                                                      .labelMediumGray800),
                                              TextSpan(
                                                  text: " ",
                                                  style: CustomTextStyles
                                                      .labelMediumGray800),
                                              TextSpan(
                                                  text:
                                                      "on Road Price (GST), Gaziabad",
                                                  style: CustomTextStyles
                                                      .labelMediumGray800)
                                            ]),
                                            textAlign: TextAlign.left))),
                                CustomOutlinedButton(
                                    text: "View More versions",
                                    margin:
                                        getMargin(left: 18, top: 18, right: 19),
                                    buttonStyle: CustomButtonStyles
                                        .outlineBlueA700
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(double.maxFinite,
                                                        getVerticalSize(45)))),
                                    buttonTextStyle:
                                        CustomTextStyles.titleSmallBlueA700_1),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 20, top: 29),
                                        child: Text("Alternatives",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.titleLarge))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 22, top: 12),
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
                                        padding: getPadding(left: 23, top: 29),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
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
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        131),
                                                                child: ListView
                                                                    .separated(
                                                                        padding: getPadding(
                                                                            left:
                                                                                9),
                                                                        scrollDirection:
                                                                            Axis
                                                                                .horizontal,
                                                                        separatorBuilder:
                                                                            (context,
                                                                                index) {
                                                                          return SizedBox(
                                                                              width: getHorizontalSize(32));
                                                                        },
                                                                        itemCount:
                                                                            2,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          return Listcurrency1ItemWidget(onTapColumnmarutialt:
                                                                              () {
                                                                            onTapColumnmarutialt(context);
                                                                          });
                                                                        }))),
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxtComparewithalto(
                                                                  context);
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
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
                                                                priceController,
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
                                                            alignment: Alignment
                                                                .center,
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
                                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgMarutialto1667634241, height: getVerticalSize(83), width: getHorizontalSize(133), margin: getMargin(left: 3)),
                                                                                                Padding(padding: getPadding(top: 7), child: Text("Hyundai Santro 2023", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall12_1)),
                                                                                                Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 4, right: 1), child: Text("Onwards", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall9)))
                                                                                              ]))
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
                                                                                                    onTapColumnmarutialt(context);
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
                                                                              controller: priceoneController,
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
                                                  width: getHorizontalSize(29),
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
                                        padding: getPadding(left: 19, top: 22),
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
                                                getPadding(left: 21, top: 6),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(14));
                                            },
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return Listrectangleei2ItemWidget();
                                            }))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 19, top: 46),
                                        child: Text("Images",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.titleLarge))),
                                Container(
                                    height: getVerticalSize(208),
                                    width: getHorizontalSize(371),
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
                                                            imagePath: ImageConstant
                                                                .imgDownload21168x129,
                                                            height:
                                                                getVerticalSize(
                                                                    168),
                                                            width:
                                                                getHorizontalSize(
                                                                    129))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 17),
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
                                    padding: getPadding(left: 47, right: 47),
                                    decoration: AppDecoration.fill,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgImage41,
                                        height: getVerticalSize(108),
                                        width: getHorizontalSize(287))),
                                Padding(
                                    padding: getPadding(top: 48),
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
                                                getPadding(left: 15, top: 12),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(14));
                                            },
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return List2ItemWidget();
                                            }))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 11, top: 56),
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
                                                getPadding(left: 14, top: 21),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(14));
                                            },
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return ListOne2ItemWidget();
                                            }))),
                                CustomOutlinedButton(
                                    text: "View upcoming all Luanches",
                                    margin:
                                        getMargin(left: 14, top: 18, right: 17),
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
                                    margin: getMargin(left: 2, top: 44),
                                    padding: getPadding(
                                        left: 15,
                                        top: 17,
                                        right: 15,
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
                                            CustomTextStyles.titleSmallPrimary))
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
}
