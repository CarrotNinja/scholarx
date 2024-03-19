import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:scholarx/widgets/app_bar/appbar_trailing_image.dart';
import 'package:scholarx/widgets/app_bar/custom_app_bar.dart';
import 'package:scholarx/widgets/custom_text_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AcademicAchievementsPageScreen extends StatefulWidget {
  AcademicAchievementsPageScreen({Key? key}) : super(key: key);

  @override
  State<AcademicAchievementsPageScreen> createState() => _AcademicAchievementsPageScreenState();
}

class _AcademicAchievementsPageScreenState extends State<AcademicAchievementsPageScreen>  {
  List<TextEditingController> _fieldController = List.generate(8, (i) => TextEditingController());
  final user = FirebaseAuth.instance.currentUser!;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkValues();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ACADEMIC ACHIEVEMENTS",
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 17.v),
                        SizedBox(width: 236.h, child: Divider()),
                        SizedBox(height: 43.v),
                        _buildThirtyEight(context),
                        SizedBox(height: 10.v),
                        _buildSaveButton(context),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 68.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Questions? ",
                                          style: theme.textTheme.bodyLarge),
                                      TextSpan(
                                          text: "Go to our FAQ’s Page",
                                          style: CustomTextStyles
                                              .titleMediumffffffff)
                                    ]),
                                    textAlign: TextAlign.left))),
                        SizedBox(height: 10.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 5.v,
                            width: 17.h),
                         GestureDetector(
                  onTap: (){Navigator.pushNamed(context, AppRoutes.homePageScreen);},
                  child: CustomImageView(
                  imagePath: ImageConstant.imgFrame1,
                  height: 64.v,
                  width: 156.h,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                              ),
                              ), 
                      ]),
                ))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 60.v,
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftOnerrorcontainer,
            margin: EdgeInsets.only(left: 12.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        );
  }

  void checkValues() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  for (int i = 0; i < 8; i++) {
    String? academicValue = prefs.getString('academic$i'+user.email!);
    if (academicValue != null) {
      _fieldController[i].text = academicValue;
    }
  }
}
  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return SizedBox(
        height: 332.v,
        width: 403.h,
        child: Stack( children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 247.h,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "List ALL of your ",
                            style: CustomTextStyles.titleMediumHanumanffffffff),
                        TextSpan(
                            text: "ACADEMIC ACHIEVEMENTS below:",
                            style: CustomTextStyles.titleMediumHanumanffcebdff)
                      ]),
                      textAlign: TextAlign.center))),
          CustomImageView(
              imagePath: ImageConstant.imgImageRemovebgPreview2297x403,
              height: 297.v,
              width: 403.h,
              alignment: Alignment.bottomCenter),
          
          CustomTextFormField(//Custom textfields to hold academic achievements
            alignment: Alignment(-0.6,-0.51),
            width: 130,
            controller: _fieldController[0],
            contentPadding: EdgeInsets.all(13),
            borderDecoration: InputBorder.none,
            textInputType: TextInputType.text,
            textStyle: TextStyle(color: Colors.white),
            fillColor: Colors.transparent,
            
          ),
          CustomTextFormField(
            alignment: Alignment(0.96,-0.51),
            width: 130,
            controller: _fieldController[1],
            contentPadding: EdgeInsets.all(13),
            borderDecoration: InputBorder.none,
            textInputType: TextInputType.text,
            textStyle: TextStyle(color: Colors.white),
            fillColor: Colors.transparent,
            
          ),
          CustomTextFormField(
            alignment: Alignment(-0.6,-0.1),
            width: 130,
            controller: _fieldController[2],
            contentPadding: EdgeInsets.all(13),
            borderDecoration: InputBorder.none,
            textInputType: TextInputType.text,
            textStyle: TextStyle(color: Colors.white),
            fillColor: Colors.transparent,
            
          ),
          CustomTextFormField(
            alignment: Alignment(0.96,-0.1),
            width: 130,
            controller: _fieldController[3],
            contentPadding: EdgeInsets.all(13),
            borderDecoration: InputBorder.none,
            textInputType: TextInputType.text,
            textStyle: TextStyle(color: Colors.white),
            fillColor: Colors.transparent,
            
          ),
          CustomTextFormField(
            alignment: Alignment(-0.6,0.3),
            width: 130,
            controller: _fieldController[4],
            contentPadding: EdgeInsets.all(13),
            borderDecoration: InputBorder.none,
            textInputType: TextInputType.text,
            textStyle: TextStyle(color: Colors.white),
            fillColor: Colors.transparent,
            
          ),
          CustomTextFormField(
            alignment: Alignment(0.96,0.3),
            width: 130,
            controller: _fieldController[5],
            contentPadding: EdgeInsets.all(13),
            borderDecoration: InputBorder.none,
            textInputType: TextInputType.text,
            textStyle: TextStyle(color: Colors.white),
            fillColor: Colors.transparent,
            
          ),
          CustomTextFormField(
            alignment: Alignment(-0.6,0.71),
            width: 130,
            controller: _fieldController[6],
            contentPadding: EdgeInsets.all(13),
            borderDecoration: InputBorder.none,
            textInputType: TextInputType.text,
            textStyle: TextStyle(color: Colors.white),
            fillColor: Colors.transparent,
            
          ),
          CustomTextFormField(
            alignment: Alignment(0.96,0.71),
            width: 130,
            controller: _fieldController[7],
            contentPadding: EdgeInsets.all(13),
            borderDecoration: InputBorder.none,
            textInputType: TextInputType.text,
            textStyle: TextStyle(color: Colors.white),
            fillColor: Colors.transparent,
            
          ),
          
          
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
  Widget _buildSaveButton(BuildContext context) {
    return Container(
      width: 387.h,
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 113.h,
        vertical: 15.v,
      ),
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7.v),
          
          SizedBox(height: 10.v),
          CustomElevatedButton(//Saves textform changeds using SharedPreferences imported class
            height: 24.v,
            text: "Click Me To Save",
            margin: EdgeInsets.only(right: 17.h),
            buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              for(int i=0;i<8;i++){
                prefs.setString('academic$i'+user.email!, _fieldController[i].text);
              }
            }
          ),
        ],
      ),
    );
  }
}
