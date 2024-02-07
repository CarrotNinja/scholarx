import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:scholarx/widgets/app_bar/appbar_trailing_image.dart';
import 'package:scholarx/widgets/app_bar/custom_app_bar.dart';

class ClubsPageScreen extends StatelessWidget {
  const ClubsPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  _buildFortyTwo(context),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 3.v),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    width: 308.h,
                                    child: Divider(indent: 72.h))),
                            SizedBox(height: 47.v),
                            SizedBox(
                                width: 285.h,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "List the ",
                                          style: CustomTextStyles
                                              .titleMediumHanumanffffffff),
                                      TextSpan(
                                          text:
                                              "CLUBS you are involved in below:",
                                          style: CustomTextStyles
                                              .titleMediumHanumanff61ff17)
                                    ]),
                                    textAlign: TextAlign.center)),
                            SizedBox(height: 9.v),
                            CustomImageView(
                                imagePath: ImageConstant
                                    .imgImageRemovebgPreview2297x411,
                                height: 297.v,
                                width: 411.h),
                            Spacer(),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Questions? ",
                                      style: theme.textTheme.bodyLarge),
                                  TextSpan(
                                      text: "Go to our FAQ’s Page",
                                      style:
                                          CustomTextStyles.titleMediumffffffff)
                                ]),
                                textAlign: TextAlign.left),
                            SizedBox(height: 11.v),
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
                            SizedBox(height: 10.v)
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return SizedBox(
        height: 75.v,
        width: 389.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 124.h),
                  child: Text("CLUBS", style: theme.textTheme.headlineLarge))),
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
