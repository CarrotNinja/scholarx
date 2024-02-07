import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_icon_button.dart';

class AwardsPageScreen extends StatelessWidget {
  const AwardsPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 14.v),
                child: Column(children: [
                  _buildAwardsPageRow(context),
                  SizedBox(height: 3.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          SizedBox(width: 297.h, child: Divider(indent: 61.h))),
                  SizedBox(height: 46.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "List ALL of your ",
                            style: CustomTextStyles.titleMediumHanumanffffffff),
                        TextSpan(
                            text: "AWARDS below:",
                            style: CustomTextStyles.titleMediumHanumanffff0000)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 37.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImageRemovebgPreview3,
                      height: 319.v,
                      width: 323.h),
                  SizedBox(height: 76.v),
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
                  SizedBox(height: 5.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame1,
                      height: 64.v,
                      width: 156.h,
                      radius: BorderRadius.circular(12.h))
                ]))));
  }

  /// Section Widget
  Widget _buildAwardsPageRow(BuildContext context) {
    return Row(
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
                      imagePath: ImageConstant.imgArrowLeftOnerrorcontainer))),
          Spacer(flex: 60),
          Padding(
              padding: EdgeInsets.only(top: 28.v),
              child: Text("AWARDS", style: theme.textTheme.headlineLarge)),
          Spacer(flex: 39),
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
        ]);
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
