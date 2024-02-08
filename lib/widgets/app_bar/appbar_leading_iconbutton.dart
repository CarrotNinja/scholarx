import 'package:flutter/material.dart';
import 'package:scholarx/core/app_export.dart';
import 'package:scholarx/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 39.adaptSize,
          width: 39.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowLeftOnerrorcontainer,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
