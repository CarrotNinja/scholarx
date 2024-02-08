import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';

class HomePageScreen extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.black90001,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 3.h),
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildHomeSection(context),
              SizedBox(height: 8.v),
              _buildGenerateYourResumeSection(context),
              SizedBox(height: 11.v),
              _buildAssignmentsSection(context),
              SizedBox(height: 3.v),
              _buildAccountSettingsSection(context),
              SizedBox(height: 5.v),
              _buildFaqsSection(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomBarSection(context),
    );
  }

  /// Section Widget
  Widget _buildHomeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "home".toUpperCase(),
              style: CustomTextStyles.bodyMediumRobotoOnErrorContainer15,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 60.v,
            width: 56.h,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            user.email!,
            style: CustomTextStyles.bodyMediumRobotoOnErrorContainer,
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGenerateYourResumeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 106.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Generate Your Resume",
            style: CustomTextStyles.bodyMediumRobotoIndigoA700,
          ),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            height: 24.v,
            text: "Click Me!",
            margin: EdgeInsets.only(right: 9.h),
            buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
            onPressed:()async{FirebaseAuth.instance.signOut();} 
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAssignmentsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.imgFluentClock28Regular,
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(left: 130.h),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 112.h),
            child: Text(
              "Assignments",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 33.v),
          CustomImageView(
            imagePath: ImageConstant.imgImageRemovebgPreview2,
            height: 184.v,
            width: 290.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountSettingsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack900011,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAkarIconsPerson,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 14.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Text(
              "Account Settings",
              style: CustomTextStyles.bodyMediumRobotoBluegray900,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFaqsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.v),
      decoration: AppDecoration.outlineBlack900011,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClarityHelpLine,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "FAQs",
                    style: CustomTextStyles.bodyMediumRobotoBluegray900,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(0.87),
          width: 1.h,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 137.h,
          vertical: 5.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbolsHome,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            Container(
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.only(left: 32.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgEllipse132x32,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
