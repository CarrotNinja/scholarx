import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import 'package:scholarx/core/utils/api.dart';
import 'dart:convert';
import 'package:dartpy/dartpy.dart';
import 'package:dartpy/dartpy_annotations.dart';
import 'dart:ffi';
import 'dart:convert' show utf8;
class HomePageScreen extends StatefulWidget {
  HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final user = FirebaseAuth.instance.currentUser!; //Instance of our database user
  PlatformFile? pickedFile; // Instance variable for selected PDF file
  File? image;// Profile picture image
  
  Future pickImage() async { // Future + async demonstraits theres an await command, indicating the method takes time
    try{
      final image =await ImagePicker().pickImage(source: ImageSource.gallery);// Prompts the user to take in image from their device photo gallery
    if(image==null) return;//If nothing was selected
    final imageTemporary = File(image.path); //Hold the image they chose in a variable as a File object
    setState(() => this.image = imageTemporary);//Refresh the state of the app to make the profilepicture take effect
    }on PlatformException catch (e){//Error catcher
      print('Failed to pick image: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
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
                image!=null ? //Ternary operator to check if image was chosen
                Padding(//Display the image the user chose
                  padding: EdgeInsets.only(left:92.h, top:16.v),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.h),
                    child: Image.file(image!, height: 60.v,width: 56.h,)
                  ),
                  )
                : CustomImageView(//Else place the default one in its spot
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
        children: [ //UI to prompt the user to press the button if they would like to change their pfp
          SizedBox(height: 7.v),
          Text(
            "Change your picture",
            style: CustomTextStyles.bodyMediumRobotoIndigoA700,//Style constant held in CustomTextStyles class
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(//Object of CustomElevatedButton class
              height: 24.v,
              text: "Click Me!",
              margin: EdgeInsets.only(right: 17.h),
              buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
              onPressed:()=>pickImage()//Calls the pickImage function on button press
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
          Icon(Icons.check),
          SizedBox(height: 4.v),
          Text(
            "Last Semester Grades",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgImageRemovebgPreview6,
            height: 138.v,
            width: 290.h,
          ),
          SizedBox(height: 10),
          if (pickedFile != null)
            Text(
              pickedFile!.name,
              style: theme.textTheme.bodySmall,
            ),
          SizedBox(height: 5),
          CustomElevatedButton(
              height: 24.v,
              width: 150.h,
              text: "Select File",
              margin: EdgeInsets.only(right: 17.h),
              buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
              onPressed: selectFile),
          SizedBox(height: 12),
          CustomElevatedButton(
            height: 24.v,
            width: 150.h,
            text: "Upload and Transcribe",
            margin: EdgeInsets.only(right: 17.h),
            buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
            onPressed: (){
              
            },
          ),
          SizedBox(
            height: 12,
          ),
          
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }

  Widget _buildAccountSettingsSection(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.settingsPageScreen);
      },
      child: Container(
        margin: EdgeInsets.only(left: 6.h),
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineBlack900012.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
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
  Widget _buildFaqsSection(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.faqPageScreen);
      },
      child: Container(
        margin: EdgeInsets.only(left: 6.h),
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineBlack900012.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
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
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.profilePageScreen);
              },
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
