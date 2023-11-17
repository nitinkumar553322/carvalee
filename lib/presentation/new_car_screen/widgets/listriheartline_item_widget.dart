import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ListriheartlineItemWidget extends StatelessWidget {
  ListriheartlineItemWidget({
    Key? key,
    this.onTapRowrectanglesix,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRowrectanglesix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        111,
      ),
      width: getHorizontalSize(
        358,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgRiheartlineGray800,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            alignment: Alignment.topRight,
            margin: getMargin(
              top: 12,
              right: 8,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                onTapRowrectanglesix?.call();
              },
              child: Container(
                padding: getPadding(
                  all: 12,
                ),
                decoration: AppDecoration.outline11.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle69,
                      height: getVerticalSize(
                        87,
                      ),
                      width: getHorizontalSize(
                        159,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          4,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Loren Epsom",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleMediumGray800,
                          ),
                          Text(
                            "Rs. 12.57L",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "On road Price(GST), Gaziabad",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallGray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemSize: getVerticalSize(
                                14,
                              ),
                              itemCount: 5,
                              updateOnDrag: true,
                              onRatingUpdate: (rating) {},
                              itemBuilder: (
                                context,
                                _,
                              ) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
