import 'package:carwalee/core/app_export.dart';import 'package:carwalee/widgets/app_bar/appbar_image.dart';import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';import 'package:carwalee/widgets/custom_drop_down.dart';import 'package:carwalee/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AdditionalFeaturesScreen extends StatelessWidget {AdditionalFeaturesScreen({Key? key}) : super(key: key);

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray10001, appBar: CustomAppBar(height: getVerticalSize(36), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 16), onTap: () {onTapArrowleft20(context);}), title: AppbarSubtitle3(text: "Sort & filter By", margin: getMargin(left: 16))), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 12), child: Padding(padding: getPadding(left: 16, right: 16, bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomDropDown(icon: Container(margin: getMargin(left: 30, right: 16), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), hintText: "Sort By", textStyle: theme.textTheme.titleSmall!, items: dropdownItemList, filled: true, fillColor: theme.colorScheme.primary, contentPadding: getPadding(left: 15, top: 13, bottom: 13), onChanged: (value) {}), CustomElevatedButton(text: "Budget", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapBudget(context);}), CustomElevatedButton(text: "Make", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapMake(context);}), CustomElevatedButton(text: "Fuel Type", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapFueltype(context);}), CustomElevatedButton(text: "Transmission Type", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapTransmission(context);}), CustomElevatedButton(text: "Body Type", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapBodytype(context);}), CustomElevatedButton(text: "Seating Capacity", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapSeating(context);}), CustomElevatedButton(text: "Airbags", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapAirbags(context);}), CustomElevatedButton(text: "Mileage", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapMileage(context);}), CustomElevatedButton(text: "Safety Ratings", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapSafetyratings(context);}), CustomElevatedButton(text: "Engine Capacity", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapEnginecapacity(context);}), Container(height: getVerticalSize(108), width: getHorizontalSize(358), margin: getMargin(top: 12), child: Stack(alignment: Alignment.bottomCenter, children: [CustomElevatedButton(text: "Power", rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(getHorizontalSize(358), getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapPower(context);}, alignment: Alignment.topCenter), CustomElevatedButton(text: "Torque", rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(getHorizontalSize(358), getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapTorque(context);}, alignment: Alignment.bottomCenter), CustomElevatedButton(text: "Apply", buttonStyle: CustomButtonStyles.fillRedA700.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(getHorizontalSize(319), getVerticalSize(45)))), buttonTextStyle: CustomTextStyles.titleSmallPrimary_1, alignment: Alignment.center)])), CustomElevatedButton(text: "Colours", margin: getMargin(top: 12), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(48)))), buttonTextStyle: theme.textTheme.titleSmall!, onTap: () {onTapColours(context);}), Container(margin: getMargin(top: 12), padding: getPadding(left: 13, top: 12, right: 13, bottom: 12), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomDropDown(icon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack900)), hintText: "Additional Features", margin: getMargin(left: 2), textStyle: theme.textTheme.titleSmall!, items: dropdownItemList1, contentPadding: getPadding(top: 1, bottom: 1), onChanged: (value) {}), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 17, top: 6), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, bottom: 1), child: Text("Sunroof", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012)), Spacer(), CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, bottom: 1), child: Text("Reverse Camera", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012))]))), Padding(padding: getPadding(left: 17, top: 8), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, top: 2), child: Text("Touchscreen Display", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012)), CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20), margin: getMargin(left: 21)), Padding(padding: getPadding(left: 6, top: 2), child: Text("Alloy Wheels", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012))])), Padding(padding: getPadding(left: 17, top: 7), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, top: 1), child: Text("Music System", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012)), Spacer(), CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, bottom: 1), child: Text("Rear AC Vents", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012))])), Padding(padding: getPadding(left: 17, top: 8), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, top: 2), child: Text("Central Locking", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012)), Spacer(), CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, bottom: 1), child: Text("Cruise Control", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012))])), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 17, top: 7), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, bottom: 1), child: Text("Hill Hold Control", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012)), Spacer(), CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, bottom: 1), child: Text("Four Wheel Drive", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 17, top: 8, bottom: 2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 6, bottom: 1), child: Text("Ventilated Seats", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012)), CustomImageView(svgPath: ImageConstant.imgSystemuiconscheckboxempty, height: getSize(20), width: getSize(20), margin: getMargin(left: 48)), Padding(padding: getPadding(left: 6, top: 2), child: Text("Wireless Charging", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray80012))])))]))])))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft20(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the budgetScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the budgetScreen.
onTapBudget(BuildContext context) { Navigator.pushNamed(context, AppRoutes.budgetScreen); } 
/// Navigates to the makeBrandScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the makeBrandScreen.
onTapMake(BuildContext context) { Navigator.pushNamed(context, AppRoutes.makeBrandScreen); } 
/// Navigates to the fuelTypeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the fuelTypeScreen.
onTapFueltype(BuildContext context) { Navigator.pushNamed(context, AppRoutes.fuelTypeScreen); } 
/// Navigates to the transmissionTypeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the transmissionTypeScreen.
onTapTransmission(BuildContext context) { Navigator.pushNamed(context, AppRoutes.transmissionTypeScreen); } 
/// Navigates to the bodyTypeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the bodyTypeScreen.
onTapBodytype(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bodyTypeScreen); } 
/// Navigates to the seatingCapacityScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the seatingCapacityScreen.
onTapSeating(BuildContext context) { Navigator.pushNamed(context, AppRoutes.seatingCapacityScreen); } 
/// Navigates to the airbagsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the airbagsScreen.
onTapAirbags(BuildContext context) { Navigator.pushNamed(context, AppRoutes.airbagsScreen); } 
/// Navigates to the mileageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the mileageScreen.
onTapMileage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.mileageScreen); } 
/// Navigates to the safeyRatingsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the safeyRatingsScreen.
onTapSafetyratings(BuildContext context) { Navigator.pushNamed(context, AppRoutes.safeyRatingsScreen); } 
/// Navigates to the engineCapacityScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the engineCapacityScreen.
onTapEnginecapacity(BuildContext context) { Navigator.pushNamed(context, AppRoutes.engineCapacityScreen); } 
/// Navigates to the powerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the powerScreen.
onTapPower(BuildContext context) { Navigator.pushNamed(context, AppRoutes.powerScreen); } 
/// Navigates to the torqueScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the torqueScreen.
onTapTorque(BuildContext context) { Navigator.pushNamed(context, AppRoutes.torqueScreen); } 
/// Navigates to the coloursScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the coloursScreen.
onTapColours(BuildContext context) { Navigator.pushNamed(context, AppRoutes.coloursScreen); } 
 }
