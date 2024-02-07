import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/presentation/sign_up_page/sign_up_page.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';

class JumpstartPageScreen extends StatelessWidget {
  const JumpstartPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.black900,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          child: Column(
            children: [
              SizedBox(height: 37.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 388.v,
                  width: 372.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgShape1,
                        height: 313.v,
                        width: 345.h,
                        alignment: Alignment.bottomRight,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Scholar",
                                style: CustomTextStyles.displayLargeffffffff,
                              ),
                              TextSpan(
                                text: "X",
                                style: theme.textTheme.displayLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Container(
                width: 350.h,
                margin: EdgeInsets.symmetric(horizontal: 49.h),
                child: Text(
                  "Create, Connect, Showcase, Succeed",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargePoppins.copyWith(
                    height: 1.6,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 312.h,
                child: Text(
                  "Take your portfolio to the next level",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallPoppinsOnErrorContainer
                      .copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildGetStartedButton(context),
    );
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
      height: 52.v,
      text: "Get Started",
      margin: EdgeInsets.only(
        left: 42.h,
        right: 42.h,
        bottom: 27.v,
      ),
      buttonStyle: CustomButtonStyles.fillOnError,
      buttonTextStyle: CustomTextStyles.titleMediumPoppins,
      onPressed: (){Navigator.pushNamed(context, AppRoutes.signUpPageTabContainerScreen);},
    );
  }
}
