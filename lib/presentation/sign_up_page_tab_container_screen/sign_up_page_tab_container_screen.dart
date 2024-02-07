import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/presentation/sign_up_page/sign_up_page.dart';
import 'package:scholarx/widgets/custom_icon_button.dart';

class SignUpPageTabContainerScreen extends StatefulWidget {
  const SignUpPageTabContainerScreen({Key? key}) : super(key: key);

  @override
  SignUpPageTabContainerScreenState createState() =>
      SignUpPageTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class SignUpPageTabContainerScreenState
    extends State<SignUpPageTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 30.v),
                  _buildThirtyRow(context),
                  SizedBox(height: 36.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 105.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Scholar",
                                    style:
                                        CustomTextStyles.displayMediumff000000),
                                TextSpan(
                                    text: "X",
                                    style: theme.textTheme.displayMedium)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 28.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 494.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [SignUpPage(), SignUpPage()]))
                ]))));
  }

  /// Section Widget
  Widget _buildThirtyRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, right: 45.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 22.v),
                      child: CustomIconButton(
                          height: 39.adaptSize,
                          width: 39.adaptSize,
                          padding: EdgeInsets.all(12.h),
                          onTap: () {
                            onTapBtnArrowLeft(context);
                          },
                          child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowLeftBlack90001))),
                  CustomImageView(
                      imagePath: ImageConstant.imgSave,
                      height: 44.v,
                      width: 46.h,
                      margin: EdgeInsets.only(top: 17.v))
                ])));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 36.v,
        width: 353.h,
        margin: EdgeInsets.only(left: 20.h),
        decoration: BoxDecoration(
            color: appTheme.gray200, borderRadius: BorderRadius.circular(10.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.black90001,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: appTheme.black90001,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600),
            indicatorPadding: EdgeInsets.all(3.0.h),
            indicator: BoxDecoration(
                color: theme.colorScheme.onErrorContainer,
                borderRadius: BorderRadius.circular(10.h)),
            tabs: [Tab(child: Text("Sign up")), Tab(child: Text("Login"))]));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
