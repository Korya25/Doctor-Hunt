import 'package:doctor_hunt/core/constant/app_colors.dart';
import 'package:doctor_hunt/core/utils/enums.dart';
import 'package:doctor_hunt/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle _rubik({
    required double fontSize,
    required FontWeightType weight,
    double letterSpacing = 0,
    required Color color,
  }) {
    return GoogleFonts.rubik(
      fontSize: fontSize.sp,
      fontWeight: weight.fontWeight,
      letterSpacing: letterSpacing,
      color: color,
    );
  }

  // Onboarding Screen
  static TextStyle get onboardingTitle => _rubik(
    fontSize: 28,
    weight: FontWeightType.medium,
    letterSpacing: -0.3,
    color: AppColors.primaryTextColor,
  );

  static TextStyle get onboardingDescription => _rubik(
    fontSize: 14,
    weight: FontWeightType.regular,
    letterSpacing: -0.3,
    color: AppColors.tertiaryTextColor,
  );

  // Buttons
  static TextStyle get button => _rubik(
    fontSize: 18,
    weight: FontWeightType.medium,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle get textButton => _rubik(
    fontSize: 14,
    weight: FontWeightType.medium,
    letterSpacing: -0.3,
    color: AppColors.tertiaryTextColor,
  );
}
