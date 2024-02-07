import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_icon_button.dart';

class OtherPageScreen extends StatelessWidget {
  const OtherPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 14.v),
                child: Column(children: [
                  _buildArrowLeftSpacerOtherSendImage(context),
                  SizedBox(height: 3.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          SizedBox(width: 308.h, child: Divider(indent: 72.h))),
                  SizedBox(height: 34.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 261.h,
                          margin: EdgeInsets.only(left: 67.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "List ",
                                    style: CustomTextStyles
                                        .titleMediumHanumanffffffff),
                                TextSpan(
                                    text:
                                        "ANYTHING ELSE you are involved in below:",
                                    style: CustomTextStyles
                                        .titleMediumHanumanffdb00ff)
                              ]),
                              textAlign: TextAlign.center))),
                  SizedBox(height: 22.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImageRemovebgPreview21,
                      height: 297.v,
                      width: 411.h),
                  SizedBox(height: 99.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Questions? ",
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "Go to our FAQ’s Page",
                            style: CustomTextStyles.titleMediumffffffff)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 10.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 5.v,
                      width: 17.h),
                  SizedBox(height: 6.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame1,
                      height: 64.v,
                      width: 156.h,
                      radius: BorderRadius.circular(12.h))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftSpacerOtherSendImage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 34.v),
                  child: CustomIconButton(
                      height: 39.adaptSize,
                      width: 39.adaptSize,
                      padding: EdgeInsets.all(12.h),
                      onTap: () {
                        onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgArrowLeftOnerrorcontainer))),
              Spacer(flex: 53),
              Padding(
                  padding: EdgeInsets.only(top: 28.v),
                  child: Text("OTHER", style: theme.textTheme.headlineLarge)),
              Spacer(flex: 46),
              CustomImageView(
                  imagePath: ImageConstant.imgSend,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 51.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgPhDotsThreeVerticalBold,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 20.h, bottom: 51.v))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
