import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
class FullScreenImage extends StatelessWidget {
  final String imagePath;

  FullScreenImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          height: getVerticalSize(48),
          leadingWidth: 40,
          leading: AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 16, top: 12, bottom: 12),
              onTap: () {
                Navigator.pop(context);
              }),
          title: AppbarSubtitle3(
              text: "Photos", margin: getMargin(left: 16))),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Hero(
            tag: 'image_0', // Use the same tag as in the list
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}