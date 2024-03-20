import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'dart:async';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'dart:convert';
class HomePageScreen extends StatefulWidget {
  HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final user = FirebaseAuth.instance.currentUser!; //Instance of our database user
  PlatformFile? pickedFile; // Instance variable for selected PDF file
  File? image;// Profile picture image
  List<String> classGrades = List.generate(6, (i) => "");
  
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

  Future selectFile() async{
    final result = await FilePicker.platform.pickFiles();
    if(result==null) return;
    setState(() {
      pickedFile = result.files.first;
    });
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

  /*Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }*/



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
  /// Outlines a text using shadows.


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
          Stack(children: [
            Align(alignment: Alignment.topCenter,
               
            ),
            CustomImageView(
            imagePath: ImageConstant.imgImageRemovebgPreview6,
            height: 138.v,
            width: 290.h,
          ),
          Positioned(child: Text(classGrades[0], style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white),),
            left: 40,
            top:18,
          ),
          Positioned(child: Text(classGrades[1], style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white),),
            left: 177,
            top:18,
          ),
          Positioned(child: Text(classGrades[2], style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white),),
            left: 40,
            top:62,
          ),
          Positioned(child: Text(classGrades[3], style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white),),
            left: 177,
            top:62,
          ),
          Positioned(child: Text(classGrades[4], style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white),),
            left: 40,
            top:106,
          ),
          Positioned(child: Text(classGrades[5], style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white),),
            left: 177,
            top:106,
          ),
          ],),
          
          SizedBox(height: 10),
          /*if (pickedFile != null)
            Text(
              pickedFile!.name,
              style: theme.textTheme.bodySmall,
            ),*/
          SizedBox(height: 5),
          CustomElevatedButton(
              height: 24.v,
              width: 150.h,
              text: "Select File",
              margin: EdgeInsets.only(right: 17.h),
              buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
              onPressed: selectFile),
          SizedBox(height: 12),

          pickedFile!=null ?Text(pickedFile!.name) : Text(""),
          SizedBox(height:5),
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomElevatedButton(
            height: 24.v,
            width: 150.h,
            text:'Generate PDF',
            margin: EdgeInsets.only(right: 17.h),
            onPressed: _extractText,
            buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
          )
        ],
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

  Future<void> _extractText() async {
    //Load an existing PDF document.
    PdfDocument document =PdfDocument(inputBytes: await _readDocumentData('ReportCard_RP1_203431826_Sherwani.pdf'));
 
    //Create a new instance of the PdfTextExtractor.
    PdfTextExtractor extractor = PdfTextExtractor(document);
    List<TextLine> result = extractor.extractTextLines(startPageIndex: 0);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Rect textBounds = Rect.fromLTWH(0, 220, 100, 9);
 
    String invoiceNumber = '';
    String s;

    
    s=textFinder(result,textBounds);
    invoiceNumber+=s;
    prefs.setString('class1'+user.email!, s);
    textBounds = Rect.fromLTWH(500, 220, 60, 9);
    invoiceNumber+=": ";
    s=textFinder(result, textBounds);
    prefs.setInt('grade1'+user.email!, int.parse(s));
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(0,270,100,9);
    invoiceNumber+="\n";


    s=textFinder(result,textBounds);
    prefs.setString('class2'+user.email!, s);
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(500, 270, 60, 9);
    invoiceNumber+=": ";
    s=textFinder(result, textBounds);
    prefs.setInt('grade2'+user.email!, int.parse(s));
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(0, 320, 100, 9);
    invoiceNumber+="\n";


    s=textFinder(result,textBounds);
    prefs.setString('class3'+user.email!, s);
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(500, 320, 60, 9);
    invoiceNumber+=": ";
    s=textFinder(result, textBounds);
    prefs.setInt('grade3'+user.email!, int.parse(s));
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(0, 380, 100, 9);
    invoiceNumber+="\n";


    s=textFinder(result,textBounds);
    prefs.setString('class4'+user.email!, s);
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(500, 380, 60, 9);
    invoiceNumber+=": ";
    s=textFinder(result, textBounds);
    prefs.setInt('grade4'+user.email!, int.parse(s));
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(0, 450, 100, 9);
    invoiceNumber+="\n";


    s=textFinder(result,textBounds);
    prefs.setString('class5'+user.email!, s);
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(500, 450, 60, 9);
    invoiceNumber+=": ";
    s=textFinder(result, textBounds);
    prefs.setInt('grade5'+user.email!, int.parse(s));
    invoiceNumber+=s;  
    textBounds = Rect.fromLTWH(0, 500, 100, 9);
    invoiceNumber+="\n";


    s=textFinder(result,textBounds);
    prefs.setString('class6'+user.email!, s);
    invoiceNumber+=s;
    textBounds = Rect.fromLTWH(500, 220, 60, 9);
    invoiceNumber+=": ";
    s=textFinder(result, textBounds);
    prefs.setInt('grade6'+user.email!, int.parse(s));
    invoiceNumber+=s;

  
 
    //Display the text.
    _showResult(invoiceNumber);
  }

String textFinder(List<TextLine> result,Rect textBounds){
  String ans = "";
  for (int i = 0; i < result.length; i++) {
  List<TextWord> wordCollection = result[i].wordCollection;
  for (int j = 0; j < wordCollection.length; j++) {
    if (textBounds.overlaps(wordCollection[j].bounds)) {
      ans += wordCollection[j].text;
    }
  }
  if(ans != ''){
    break;
  }
}
  return ans;
}
Future<List<int>> _readDocumentData(String name) async {
  final ByteData data = await rootBundle.load('assets/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}
void _showResult(String text) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
      title: Text('Extracted text'),
      content: Scrollbar(
        child: SingleChildScrollView(
          child: Text(text, style: TextStyle(color: Colors.black),),
          physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()),
        ),
      ),
      actions: [
        Center(
          child: CustomElevatedButton(
              height: 24.v,
              width: 150.h,
              text:'Confirm',
              margin: EdgeInsets.symmetric(),
              onPressed: () async{
              SharedPreferences prefs = await SharedPreferences.getInstance();
              for (int i = 1; i <=6; i++) {
                String? academicValue = prefs.getString('class$i'+user.email!);
                int? grade = prefs.getInt('grade$i'+user.email!);
                if(grade!=null&&academicValue!=null){
                  setState(() {
                    classGrades[i-1] = academicValue +"\n"+ grade.toString();
                  });
                }                 
              }
              Navigator.of(context).pop();
            },
              buttonTextStyle: CustomTextStyles.labelLargeInterOnErrorContainer,
            ),
        )
      ],
    );
  });
}
}
