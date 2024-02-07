import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:scholarx/widgets/custom_icon_button.dart';
import 'package:scholarx/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage>
    with AutomaticKeepAliveClientMixin<SignUpPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(
                  children: [
                    SizedBox(height: 37.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          right: 37.h,
                        ),
                        child: Column(
                          children: [
                            _buildEmailInput(context),
                            SizedBox(height: 25.v),
                            _buildPasswordInput(context),
                            SizedBox(height: 26.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Forgot password?",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            SizedBox(height: 35.v),
                            _buildSignInOptionsStack(context),
                            SizedBox(height: 37.v),
                            Text(
                              "Other sign in options",
                              style: CustomTextStyles.bodyMediumBlack9000115,
                            ),
                            SizedBox(height: 14.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
                                  padding: EdgeInsets.all(15.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineBlueGray,
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSocialIconFacebook,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: CustomIconButton(
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    padding: EdgeInsets.all(15.h),
                                    decoration:
                                        IconButtonStyleHelper.outlineBlueGray,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGoogle,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: CustomIconButton(
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    padding: EdgeInsets.all(15.h),
                                    decoration:
                                        IconButtonStyleHelper.outlineBlueGray,
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSocialIconApple,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email address",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "Your email",
            textInputType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: theme.textTheme.bodyMedium,
          ),
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
                width: 20.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
            obscureText: true,
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 18.v,
              bottom: 18.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInOptionsStack(BuildContext context) {
    return SizedBox(
      height: 56.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: Text(
                "Sign in",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          CustomElevatedButton(
            height: 56.v,
            width: 353.h,
            text: "Sign up",
            buttonStyle: CustomButtonStyles.fillBlack,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
