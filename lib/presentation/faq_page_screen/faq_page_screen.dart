import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:scholarx/widgets/app_bar/appbar_trailing_image.dart';
import 'package:scholarx/widgets/app_bar/custom_app_bar.dart';

class FaqPageScreen extends StatelessWidget {
  const FaqPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  _buildFortyFiveStack(context),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40.h, vertical: 1.v),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Divider(indent: 31.h, endIndent: 62.h)),
                        SizedBox(height: 22.v),
                        Text("Commonly Asked Questions:",
                            style: CustomTextStyles.titleMediumHanuman),
                        SizedBox(height: 16.v),
                        Container(
                            width: 292.h,
                            margin: EdgeInsets.only(left: 22.h, right: 15.h),
                            child: Text(
                                "What is the most popular online shopping store?",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumPoppinsWhiteA700)),
                        SizedBox(height: 8.v),
                        Container(
                            width: 305.h,
                            margin: EdgeInsets.only(left: 18.h, right: 6.h),
                            child: Text(
                                "Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumPoppinsOnPrimaryContainer)),
                        SizedBox(height: 7.v),
                        Container(
                            width: 292.h,
                            margin: EdgeInsets.only(left: 22.h, right: 15.h),
                            child: Text(
                                "What is the most popular online shopping store?",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumPoppinsWhiteA700)),
                        SizedBox(height: 5.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: 305.h,
                                margin: EdgeInsets.only(left: 22.h, right: 2.h),
                                child: Text(
                                    "Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsOnPrimaryContainer))),
                        SizedBox(height: 9.v),
                        Container(
                            width: 292.h,
                            margin: EdgeInsets.only(left: 22.h, right: 13.h),
                            child: Text(
                                "What is the most popular online shopping store?",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumPoppinsWhiteA700)),
                        SizedBox(height: 8.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: 305.h,
                                margin: EdgeInsets.only(left: 22.h),
                                child: Text(
                                    "Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsOnPrimaryContainer))),
                        SizedBox(height: 6.v),
                        Container(
                            width: 292.h,
                            margin: EdgeInsets.only(left: 19.h, right: 18.h),
                            child: Text(
                                "What is the most popular online shopping store?",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumPoppinsWhiteA700)),
                        SizedBox(height: 8.v),
                        Container(
                            width: 305.h,
                            margin: EdgeInsets.only(left: 15.h, right: 9.h),
                            child: Text(
                                "Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumPoppinsOnPrimaryContainer)),
                        SizedBox(height: 1.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 5.v,
                            width: 17.h),
                        SizedBox(height: 6.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgFrame1,
                            height: 64.v,
                            width: 156.h,
                            radius: BorderRadius.circular(12.h)),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildFortyFiveStack(BuildContext context) {
    return SizedBox(
        height: 77.v,
        width: 389.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 147.h),
                  child: Text("FAQs", style: theme.textTheme.headlineLarge))),
          CustomAppBar(
              leadingWidth: 50.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowLeftOnerrorcontainer,
                  margin: EdgeInsets.only(left: 11.h, top: 2.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgSend,
                    margin: EdgeInsets.only(left: 11.h, right: 17.h)),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgPhDotsThreeVerticalBold,
                    margin: EdgeInsets.only(left: 20.h, right: 28.h))
              ])
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
