import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:scholarx/widgets/app_bar/appbar_trailing_image.dart';
import 'package:scholarx/widgets/app_bar/custom_app_bar.dart';
import 'package:scholarx/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore_for_file: must_be_immutable
class SettingsPageScreen extends StatelessWidget {
  SettingsPageScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("Account Settings",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 1.v),
                      
                      SizedBox(height: 27.v),
                    
                      
                      GestureDetector(
                        onTap: () async{FirebaseAuth.instance.signOut();
                        Navigator.pushNamed(context,AppRoutes.signUpPageTabContainerScreen);},
                        child: _buildStackFrame(context),
                      ),
                      
                      SizedBox(height: 400.v),
                      
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame1,
                          height: 64.v,
                          width: 156.h,
                          radius: BorderRadius.circular(12.h),
                          alignment: Alignment.center),
                      SizedBox(height: 14.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 62.v,
        leadingWidth: 50.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftOnerrorcontainer,
            margin: EdgeInsets.only(left: 11.h, top: 9.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSend,
              margin: EdgeInsets.only(left: 11.h, top: 7.v, right: 24.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPhDotsThreeVerticalBold,
              margin: EdgeInsets.only(left: 20.h, top: 7.v, right: 35.h))
        ]);
  }

  /// Section Widget
  

  /// Section Widget
  Widget _buildStackFrame(BuildContext context) {
    return Container(
        height: 86.v,
        width: 342.h,
        margin: EdgeInsets.only(left: 8.h),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          
          Container(
              width: 342.h,
              height: 60,
              color: Colors.black,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 202.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Actions", style: theme.textTheme.titleMedium),
                        SizedBox(height: 25.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          height: 25.v,
                                          width: 30.h,
                                          padding: EdgeInsets.all(2.h),
                                          decoration:
                                              AppDecoration.outlineBlack900013,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowLeft,
                                              height: 18.v,
                                              width: 22.h,
                                              alignment: Alignment.center)),
                                      Padding(
                                          padding: EdgeInsets.only(top: 5.v),
                                          child: Text("Log out",
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ])))
                      ])))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
