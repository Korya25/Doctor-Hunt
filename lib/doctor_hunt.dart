import 'package:doctor_hunt/core/resources/app_router.dart';
import 'package:doctor_hunt/core/resources/app_theme.dart';
import 'package:flutter/material.dart';

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.appRouter,
    );
  }
}
