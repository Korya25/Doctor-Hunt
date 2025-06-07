import 'package:doctor_hunt/features/home/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            // Header
            SliverToBoxAdapter(
              child: SizedBox(
                height: 180.h,
                width: double.infinity,
                child: HomeHeader(
                  userName: 'Korya',
                  userImage:
                      'https://scontent.fcai21-4.fna.fbcdn.net/v/t51.75761-15/487994668_17928347880030134_5176698349206987161_n.jpg?stp=dst-jpg_tt6&_nc_cat=101&ccb=1-7&_nc_sid=127cfc&_nc_ohc=NEo6df7yBncQ7kNvwHFoC0c&_nc_oc=AdkUz4fDN38uZLbxX2CNrcrT85BMqeJZ0HjpeRWjuwG9HAxBxRdhzi7Z_NO_6IdM9x0&_nc_zt=23&_nc_ht=scontent.fcai21-4.fna&_nc_gid=4oUwCthFpaBZythMnUCrwQ&oh=00_AfMwls07yykIGcZMNWYDjAOzQKkjQq-512kHgd8ls3WqUA&oe=684A0E2C',
                ),
              ),
            ),

            // Live Doctors

            // Popular Doctors

            // Categories

            // Featured Doctors
          ],
        ),
      ),
    );
  }
}
