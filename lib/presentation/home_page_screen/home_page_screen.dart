import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({super.key});
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 413.h,
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              _buildHomeSection(context),
              SizedBox(height: 4.v),
              _buildGenerateYourResumeSection(context),
              SizedBox(height: 10.v),
              _buildAssignmentsSection(context),
              SizedBox(height: 8.v),
              _buildAccountSettingsSection(context),
              SizedBox(height: 8.v),
              _buildFaqsSection(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeSection(BuildContext context) {
    return Container(
      width: 372.h,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.outlineBlack900011.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 58.v),
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
                margin: EdgeInsets.only(
                  left: 92.h,
                  top: 16.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.center,
            child: Text(
                user.email!,
              style: CustomTextStyles.bodyMediumRobotoOnErrorContainer,
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGenerateYourResumeSection(BuildContext context) {
    return Container(
      width: 387.h,
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 113.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack900012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7.v),
          Text(
            "Generate Your Resume",
            style: CustomTextStyles.bodyMediumRobotoIndigoA700,
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            height: 24.v,
            text: "Click Me!",
            margin: EdgeInsets.only(right: 17.h),
            buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
            onPressed: () async{FirebaseAuth.instance.signOut();}
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAssignmentsSection(BuildContext context) {
    return Container(
      width: 387.h,
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 44.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.outlineBlack900012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.v),
          CustomImageView(
            imagePath: ImageConstant.imgFluentClock28Regular,
            height: 34.adaptSize,
            width: 34.adaptSize,
          ),
          SizedBox(height: 4.v),
          Text(
            "Assignments",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgImageRemovebgPreview2,
            height: 184.v,
            width: 290.h,
          ),
        ],
      ),
    );
  }

  Widget _buildAccountSettingsSection(BuildContext context) {
    return GestureDetector(
      onTap:(){Navigator.pushNamed(context, AppRoutes.settingsPageScreen);} ,
      child: Container(
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack900013,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClarityHelpLineIndigoA70002,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
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
          ),
          SizedBox(height: 3.v),
        ],
      ),
    ),
    );
  }

  /// Section Widget
  /*Widget _buildAccountSettingsSection(BuildContext context) {
    return SizedBox(
      height: 40.v,
      width: 387.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 5.v,
            width: 17.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineBlack900013,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAkarIconsPerson,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
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
                    margin: EdgeInsets.only(right: 4.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }*/

  /// Section Widget
  Widget _buildFaqsSection(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pushNamed(context,AppRoutes.faqPageScreen);},
      child: Container(
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack900013,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClarityHelpLineIndigoA70002,
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
          
        ],
      ),
    ),
    );
    
    
    
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25.h,
        right: 18.h,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 100.h,
          vertical: 2.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
             GestureDetector(
                onTap: (){Navigator.pushNamed(context, AppRoutes.profilePageScreen);},
                child: CustomImageView(
                imagePath: ImageConstant.imgFrame1,
                height: 64.v,
                width: 156.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
              ), 
          ],
        ),
      ),
    );
  }
}
