import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:scholarx/widgets/custom_outlined_button.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSend,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPhDotsThreeVerticalBold,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 20.h),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1100x100,
                height: 100.adaptSize,
                width: 100.adaptSize,
                radius: BorderRadius.circular(
                  50.h,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "User Name",
                style: CustomTextStyles.bodyLargeHanumanOnErrorContainer,
              ),
              SizedBox(height: 8.v),
              Text(
                "USER HANDLE",
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 236.h,
                child: Divider(),
              ),
              SizedBox(height: 18.v),
              Text(
                "My Profile",
                style: CustomTextStyles.labelLargeOnErrorContainer,
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 34.h,
                child: Divider(
                  color: theme.colorScheme.onErrorContainer,
                ),
              ),
              SizedBox(height: 43.v),
              _buildAcademic(context),
              SizedBox(height: 19.v),
              _buildAwards(context),
              SizedBox(height: 21.v),
              _buildClubs(context),
              SizedBox(height: 26.v),
              _buildExtracurricularsECs(context),
              SizedBox(height: 21.v),
              _buildOther(context),
              SizedBox(height: 23.v),
              CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 5.v,
                width: 17.h,
              ),
              SizedBox(height: 6.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrame1,
                height: 64.v,
                width: 156.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAcademic(BuildContext context) {
    return CustomElevatedButton(
      text: "Academic",
      margin: EdgeInsets.symmetric(horizontal: 54.h),
    );
  }

  /// Section Widget
  Widget _buildAwards(BuildContext context) {
    return CustomOutlinedButton(
      height: 44.v,
      text: "Awards",
      margin: EdgeInsets.only(
        left: 54.h,
        right: 56.h,
      ),
      buttonStyle: CustomButtonStyles.outlineDeepOrange,
    );
  }

  /// Section Widget
  Widget _buildClubs(BuildContext context) {
    return CustomElevatedButton(
      text: "Clubs",
      margin: EdgeInsets.only(
        left: 54.h,
        right: 56.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildExtracurricularsECs(BuildContext context) {
    return CustomOutlinedButton(
      height: 44.v,
      text: "Extracurriculars (ECs)",
      margin: EdgeInsets.symmetric(horizontal: 54.h),
      buttonStyle: CustomButtonStyles.outlineOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildOther(BuildContext context) {
    return CustomElevatedButton(
      text: "Other",
      margin: EdgeInsets.only(
        left: 54.h,
        right: 56.h,
      ),
    );
  }
}
