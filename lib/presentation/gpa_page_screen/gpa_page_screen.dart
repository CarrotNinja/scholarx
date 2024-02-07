import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:scholarx/widgets/custom_icon_button.dart';
import 'package:scholarx/widgets/custom_outlined_button.dart';

class GpaPageScreen extends StatelessWidget {
  const GpaPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildArrowLeftButton(context),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(width: 236.h, child: Divider())),
                      SizedBox(height: 56.v),
                      Padding(
                          padding: EdgeInsets.only(right: 66.h),
                          child: Text("Upload your Transcript: ",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 38.v),
                      CustomElevatedButton(
                          text: "Upload",
                          margin: EdgeInsets.only(left: 67.h, right: 43.h)),
                      SizedBox(height: 37.v),
                      CustomOutlinedButton(
                          height: 32.v,
                          width: 164.h,
                          text: "Submit",
                          margin: EdgeInsets.only(right: 100.h),
                          buttonStyle:
                              CustomButtonStyles.outlineOnErrorContainer),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(right: 59.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Questions? ",
                                    style: theme.textTheme.bodyLarge),
                                TextSpan(
                                    text: "Go to our FAQ’s Page",
                                    style: CustomTextStyles.titleMediumffffffff)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 32.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 5.v,
                          width: 17.h,
                          alignment: Alignment.center),
                      SizedBox(height: 6.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame1,
                          height: 64.v,
                          width: 156.h,
                          radius: BorderRadius.circular(12.h),
                          alignment: Alignment.center)
                    ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftButton(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
              Spacer(flex: 56),
              Padding(
                  padding: EdgeInsets.only(top: 26.v),
                  child: Text("GPA", style: theme.textTheme.headlineLarge)),
              Spacer(flex: 43),
              CustomImageView(
                  imagePath: ImageConstant.imgSend,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 48.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgPhDotsThreeVerticalBold,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 20.h, bottom: 48.v))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
