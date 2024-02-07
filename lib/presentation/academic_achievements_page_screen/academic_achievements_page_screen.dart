import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:scholarx/widgets/app_bar/appbar_trailing_image.dart';
import 'package:scholarx/widgets/app_bar/custom_app_bar.dart';

class AcademicAchievementsPageScreen extends StatelessWidget {
  const AcademicAchievementsPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ACADEMIC ACHIEVEMENTS",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 17.v),
                      SizedBox(width: 236.h, child: Divider()),
                      SizedBox(height: 43.v),
                      _buildThirtyEight(context),
                      SizedBox(height: 93.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 68.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Questions? ",
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "Go to our FAQ’s Page",
                                        style: CustomTextStyles
                                            .titleMediumffffffff)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 22.v),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 60.v,
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftOnerrorcontainer,
            margin: EdgeInsets.only(left: 12.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSend,
              margin: EdgeInsets.only(left: 11.h, top: 9.v, right: 22.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPhDotsThreeVerticalBold,
              margin: EdgeInsets.only(left: 20.h, top: 9.v, right: 33.h))
        ]);
  }

  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return SizedBox(
        height: 332.v,
        width: 403.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 247.h,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "List ALL of your ",
                            style: CustomTextStyles.titleMediumHanumanffffffff),
                        TextSpan(
                            text: "ACADEMIC ACHIEVEMENTS below:",
                            style: CustomTextStyles.titleMediumHanumanffcebdff)
                      ]),
                      textAlign: TextAlign.center))),
          CustomImageView(
              imagePath: ImageConstant.imgImageRemovebgPreview2297x403,
              height: 297.v,
              width: 403.h,
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
