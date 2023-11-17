import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/images_page/images_page.dart';
import 'package:carwalee/presentation/news_page/news_page.dart';
import 'package:carwalee/presentation/reviews_page/reviews_page.dart';
import 'package:carwalee/presentation/used_cars_page/used_cars_page.dart';
import 'package:carwalee/presentation/videos_page/videos_page.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ImagesTabContainerScreen extends StatefulWidget {
  const ImagesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ImagesTabContainerScreenState createState() =>
      ImagesTabContainerScreenState();
}

class ImagesTabContainerScreenState extends State<ImagesTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
          height: getVerticalSize(
            48,
          ),
          title: Padding(
            padding: getPadding(
              left: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 73,
                  ),
                  child: Row(
                    children: [
                      AppbarSubtitle3(
                        text: "News",
                        margin: getMargin(
                          top: 1,
                        ),
                      ),
                      AppbarImage(
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        imagePath: ImageConstant.imgMaskgroup16,
                        margin: getMargin(
                          left: 129,
                          top: 3,
                          bottom: 4,
                        ),
                      ),
                      AppbarSubtitle3(
                        text: "Search",
                        margin: getMargin(
                          left: 6,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: SizedBox(
                      width: getHorizontalSize(
                        310,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: appTheme.gray800,
                        indent: getHorizontalSize(
                          160,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                20,
              ),
              width: getSize(
                20,
              ),
              imagePath: ImageConstant.imgImage51,
              margin: getMargin(
                left: 8,
                top: 15,
                right: 8,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  29,
                ),
                width: getHorizontalSize(
                  358,
                ),
                margin: getMargin(
                  top: 14,
                ),
                child: TabBar(
                  controller: tabviewController,
                  labelColor: appTheme.greenA700,
                  labelStyle: TextStyle(),
                  unselectedLabelColor: appTheme.gray800,
                  unselectedLabelStyle: TextStyle(),
                  indicatorColor: appTheme.greenA700,
                  tabs: [
                    Tab(
                      child: Text(
                        "NEWS",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "REVIEWS",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "VIDEOS",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "PHOTOS",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: getVerticalSize(
                    1215,
                  ),
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      NewsPage(),
                      ReviewsPage(),
                      VideosPage(),
                      ImagesPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
