import '../car_detail_2_overview_page/widgets/list_item_widget.dart';
import '../car_detail_2_overview_page/widgets/list_one_item_widget.dart';
import '../car_detail_2_overview_page/widgets/listcurrency_item_widget.dart';
import '../car_detail_2_overview_page/widgets/listrectangleei_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class CarDetail2OverviewPage extends StatefulWidget {
  const CarDetail2OverviewPage({Key? key}) : super(key: key);

  @override
  CarDetail2OverviewPageState createState() => CarDetail2OverviewPageState();
}

class CarDetail2OverviewPageState extends State<CarDetail2OverviewPage>
    with AutomaticKeepAliveClientMixin<CarDetail2OverviewPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
            width: mediaQueryData.size.width,
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
                        Container(
                            height: getVerticalSize(246),
                            width: getHorizontalSize(317),
                            margin: getMargin(top: 43),
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
                        CustomOutlinedButton(
                            text: "View More versions",
                            margin:
                                getMargin(left: 18, top: 24, right: 19),
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
                                padding: getPadding(left: 19, top: 50),
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
                                      SizedBox(
                                          height: getVerticalSize(207),
                                          child: ListView.separated(
                                              scrollDirection:
                                                  Axis.horizontal,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    width:
                                                        getHorizontalSize(
                                                            14));
                                              },
                                              itemCount: 2,
                                              itemBuilder:
                                                  (context, index) {
                                                return ListcurrencyItemWidget(
                                                    onTapColumnmarutialt:
                                                        () {
                                                  onTapColumnmarutialt(
                                                      context);
                                                }, onTapTxtComparison:
                                                        () {
                                                  onTapTxtComparison(
                                                      context);
                                                }, onTapViewprice: () {
                                                  onTapViewprice(
                                                      context);
                                                });
                                              })),
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
                                      return ListrectangleeiItemWidget();
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
                            padding: getPadding(top: 53),
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
                                        getPadding(left: 18, top: 12),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          width: getHorizontalSize(14));
                                    },
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return ListItemWidget();
                                    }))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 17, top: 55),
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
                                      return ListOneItemWidget();
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
                            margin: getMargin(left: 2, top: 48),
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
            ])));
  }


  onTapColumnmarutialt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }


  onTapTxtComparison(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }


  onTapViewprice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }


  onTapViewupcoming(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }


  onTapGetnewoffers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPopUpScreen);
  }
}
