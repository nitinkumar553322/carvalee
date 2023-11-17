import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:flutter/material.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import 'app_bar/appbar_image.dart';
import 'app_bar/custom_app_bar.dart';
import 'custom_elevated_button.dart';
import 'custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FeedbackScreen extends StatelessWidget {
  TextEditingController group502Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            height: getVerticalSize(57),
            leadingWidth: 41,
            leading: AppbarImage(
                height: getSize(26),
                width: getSize(26),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 15, top: 15, bottom: 15),
                onTap: () => onTapArrowleft2(context)),
            centerTitle: true,
            title: AppbarSubtitle3(text: "Feedback")),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 20, top: 39, right: 20, bottom: 39),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Send your feedback",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,),
                  Padding(
                      padding: getPadding(top: 18),
                      child: Text(
                          "Tell us your honest feedback to help us improve ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Enter your feedback"),
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    text: "Submit",
                    buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(
                          double.maxFinite,
                          getVerticalSize(45),
                        ),
                      ),
                    ),
                    buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
                    onTap: () {
                    Navigator.pop(context);
                    },
                  ),
                ])));
  }



  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}