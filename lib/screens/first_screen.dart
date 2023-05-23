import 'package:datin_app/constants/image_path.dart';
import 'package:datin_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: Colors.white,
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              SizedBox(height: size.height * 0.08),
              const Text("Dating App"),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                    ),
                    children: const [
                      TextSpan(
                        text: "Find your ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "perfect \n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: "partner",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                height: size.height * 0.400,
                child: Image.asset(
                  ImagePath.findImage,
                ),
              ),
              SizedBox(height: size.height * 0.08),
              Text(
                "Application aimed at singles  looking for serious  relationship",
                style: TextStyle(
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 6.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
