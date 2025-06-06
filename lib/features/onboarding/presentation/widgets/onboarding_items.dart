import 'package:doctor_hunt/core/constant/app_padding.dart';
import 'package:doctor_hunt/features/onboarding/presentation/widgets/title_sub.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingItems extends StatelessWidget {
  const OnboardingItems({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Image
        CircleAvatar(radius: 180.r, backgroundImage: AssetImage(image)),

        // Title and Subtitle
        Padding(
          padding: AppPadding.paddingH20,
          child: TitleSub(title: title, subtitle: subtitle),
        ),
      ],
    );
  }
}
