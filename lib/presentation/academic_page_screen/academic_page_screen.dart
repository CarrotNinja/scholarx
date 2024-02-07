import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:scholarx/widgets/custom_icon_button.dart';
import 'package:scholarx/widgets/custom_outlined_button.dart';

class AcademicPageScreen extends StatelessWidget {
  const AcademicPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 14.v),
                child: Column(children: [
                  _buildRowWithIconsAndText(context),
                  SizedBox(height: 6.v),
                  SizedBox(width: 236.h, child: Divider()),
                  Spacer(flex: 38),
                  CustomElevatedButton(
                      text: "GPA",
                      margin: EdgeInsets.only(left: 61.h, right: 49.h)),
                  SizedBox(height: 52.v),
                  CustomOutlinedButton(
                      height: 44.v,
                      text: "Academic Achievements",
                      margin: EdgeInsets.only(left: 61.h, right: 49.h),
                      buttonStyle:
                          CustomButtonStyles.outlineOnErrorContainerTL10),
                  Spacer(flex: 61),
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
                  SizedBox(height: 32.v),
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
  Widget _buildRowWithIconsAndText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 4.v, bottom: 32.v),
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
              Spacer(flex: 63),
              Padding(
                  padding: EdgeInsets.only(top: 28.v),
                  child:
                      Text("ACADEMIC", style: theme.textTheme.headlineLarge)),
              Spacer(flex: 36),
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
