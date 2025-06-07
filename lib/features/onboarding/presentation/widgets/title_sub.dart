import 'package:doctor_hunt/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSub extends StatelessWidget {
  const TitleSub({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        // Title
        Text(title, style: AppTextStyles.rubik28MediumPrimary),

        // Subtitle
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.rubik14RegularTiary,
        ),
      ],
    );
  }
}
