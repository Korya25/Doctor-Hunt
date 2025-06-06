import 'package:doctor_hunt/core/constant/app_padding.dart';
import 'package:doctor_hunt/core/resources/app_routes.dart';
import 'package:doctor_hunt/features/onboarding/data/models/onboarding_model.dart';
import 'package:doctor_hunt/features/onboarding/presentation/widgets/onboarding_buttom.dart';
import 'package:doctor_hunt/features/onboarding/presentation/widgets/onboarding_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController pageController;
  late final ValueNotifier<int> currentIndexNotifier;
  late final ValueNotifier<DecorationImage> backgroundImageNotifier;
  final List<OnboardingModel> onboardingList = OnboardingModel.onboardingList;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    currentIndexNotifier = ValueNotifier(0);
    backgroundImageNotifier = ValueNotifier(getbackgroundImage(0));
    pageController.addListener(updateCurrentIndex);
  }

  DecorationImage getbackgroundImage(int index) {
    final bgIndex = index % 2;
    return DecorationImage(
      image: AssetImage(onboardingList[bgIndex].background),
      fit: BoxFit.cover,
    );
  }

  void updateCurrentIndex() {
    final newIndex = pageController.page?.round() ?? 0;
    currentIndexNotifier.value = newIndex;
    backgroundImageNotifier.value = getbackgroundImage(newIndex);
  }

  @override
  void dispose() {
    pageController.removeListener(updateCurrentIndex);
    pageController.dispose();
    currentIndexNotifier.dispose();
    backgroundImageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DecorationImage>(
      valueListenable: backgroundImageNotifier,
      builder: (context, backgroundImage, _) {
        return Container(
          decoration: BoxDecoration(image: backgroundImage),
          child: SafeArea(
            child: Padding(
              padding: AppPadding.paddingH20V20,
              child: Column(
                spacing: 22.h,
                children: [
                  // Page View
                  Expanded(
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: onboardingList.length,
                      itemBuilder: (context, index) {
                        final item = onboardingList[index];
                        return OnboardingItems(
                          image: item.image,
                          title: item.title,
                          subtitle: item.subtitle,
                        );
                      },
                    ),
                  ),

                  // Buttom
                  ValueListenableBuilder<int>(
                    valueListenable: currentIndexNotifier,
                    builder: (context, currentIndex, _) {
                      return OnboardingButtom(
                        getStartedOnTap: () => context.goNamed(AppRoutes.home),
                        nextOnTap: () {
                          if (currentIndex < onboardingList.length - 1) {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            context.goNamed(AppRoutes.home);
                          }
                        },
                        disableNextOnTap:
                            currentIndex >= onboardingList.length - 1,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
