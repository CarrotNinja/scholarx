import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_checkbox_button.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:scholarx/widgets/custom_icon_button.dart';
import 'package:scholarx/widgets/custom_outlined_button.dart';
import 'package:scholarx/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMeCheckbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 18.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildRowWithArrowAndSave(context),
                                  SizedBox(height: 37.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("Hi, Welcome Back!",
                                          style: CustomTextStyles
                                              .headlineLargePoppinsBlack90001)),
                                  SizedBox(height: 32.v),
                                  _buildEmailInput(context),
                                  SizedBox(height: 16.v),
                                  _buildPasswordInput(context),
                                  SizedBox(height: 30.v),
                                  _buildRememberMeCheckbox(context),
                                  SizedBox(height: 27.v),
                                  CustomElevatedButton(
                                      height: 56.v,
                                      text: "Log in",
                                      margin: EdgeInsets.only(
                                          left: 10.h, right: 28.h),
                                      buttonStyle:
                                          CustomButtonStyles.fillBlack),
                                  SizedBox(height: 50.v),
                                  _buildRowWithLinesAndText(context),
                                  SizedBox(height: 27.v),
                                  _buildRowWithButtons(context),
                                  SizedBox(height: 28.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Don’t have an account?",
                                                style: CustomTextStyles
                                                    .bodyMediumb2000000),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "Sign up",
                                                style: CustomTextStyles
                                                    .titleSmallff000000)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildRowWithArrowAndSave(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
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
                          imagePath: ImageConstant.imgArrowLeftBlack90001))),
              CustomImageView(
                  imagePath: ImageConstant.imgSave,
                  height: 44.v,
                  width: 46.h,
                  margin: EdgeInsets.only(top: 17.v))
            ]));
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 28.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Email address", style: theme.textTheme.bodyMedium),
          SizedBox(height: 6.v),
          CustomTextFormField(
              controller: emailController,
              hintText: "Your email",
              textInputType: TextInputType.emailAddress)
        ]));
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 28.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Password", style: theme.textTheme.bodyMedium),
          SizedBox(height: 6.v),
          CustomTextFormField(
              controller: passwordController,
              hintText: "Password",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 56.v),
              obscureText: true,
              contentPadding:
                  EdgeInsets.only(left: 16.h, top: 18.v, bottom: 18.v))
        ]));
  }

  /// Section Widget
  Widget _buildRememberMeCheckbox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomCheckboxButton(
            text: "Remember me",
            value: rememberMeCheckbox,
            onChange: (value) {
              rememberMeCheckbox = value;
            }));
  }

  /// Section Widget
  Widget _buildRowWithLinesAndText(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, right: 25.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
                      child: SizedBox(
                          width: 132.h,
                          child: Divider(color: appTheme.blueGray100))),
                  Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text("Or with",
                          style: CustomTextStyles.bodyMediumBlack90001)),
                  Padding(
                      padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
                      child: SizedBox(
                          width: 153.h,
                          child: Divider(
                              color: appTheme.blueGray100, indent: 21.h)))
                ])));
  }

  /// Section Widget
  Widget _buildRowWithButtons(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 28.h),
        child: Row(children: [
          CustomOutlinedButton(
              width: 170.h,
              text: "Facebook",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSocialIconFacebook,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonTextStyle: CustomTextStyles.titleSmallMedium),
          CustomOutlinedButton(
              width: 170.h,
              text: "Google",
              margin: EdgeInsets.only(left: 13.h),
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 12.h),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(9.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGoogle,
                      height: 19.v,
                      width: 18.h)),
              buttonTextStyle: CustomTextStyles.titleSmallMedium)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
