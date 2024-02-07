import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:scholarx/widgets/custom_outlined_button.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIllustration,
                height: 273.v,
                width: 315.h,
              ),
              SizedBox(height: 65.v),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Explore Scholar",
                        style: CustomTextStyles.displayMediumffffffff,
                      ),
                      TextSpan(
                        text: "X",
                        style: theme.textTheme.displayMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 56.v),
              CustomElevatedButton(
                height: 56.v,
                text: "Sign In",
                margin: EdgeInsets.only(right: 18.h),
              ),
              SizedBox(height: 30.v),
              CustomOutlinedButton(
                text: "Create Account",
                margin: EdgeInsets.only(right: 18.h),
                buttonStyle: CustomButtonStyles.outlineGray,
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }
}
