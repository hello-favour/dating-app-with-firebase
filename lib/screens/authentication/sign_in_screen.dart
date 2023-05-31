import 'package:datin_app/components/app_text.dart';
import 'package:datin_app/constants/image_path.dart';
import 'package:datin_app/theme/app_colors.dart';
import 'package:datin_app/widgets/app_textfield.dart';
import 'package:datin_app/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isChecked = false;
  bool checkPassword = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "Log into your account.",
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                ),
                SizedBox(height: size.height * 0.05),
                AppText(
                  text: "Email",
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                ),
                SizedBox(height: size.height * 0.01),
                AppTextField(
                  text: "Enter email",
                  icon: const Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  size: 10.sp,
                ),
                SizedBox(height: size.height * 0.03),
                AppText(
                  text: "Password",
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                ),
                SizedBox(height: size.height * 0.01),
                AppTextField(
                  text: "Enter password",
                  icon: const Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    color: Colors.black,
                    onPressed: () {
                      setState(() {
                        checkPassword = !checkPassword;
                      });
                    },
                    icon: Icon(
                      checkPassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  obsecuretext: checkPassword,
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  children: [
                    const Icon(
                      Icons.lock_reset,
                      color: Colors.black,
                    ),
                    SizedBox(width: size.width * 0.04),
                    AppText(
                      text: "Incorrect password",
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: AppColors.secondaryColor,
                          activeColor: AppColors.primaryColor,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        AppText(
                          text: "Remember me",
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(width: size.width * 0.04),
                    TextButton(
                      onPressed: () {},
                      child: AppText(
                        text: "Forgot password?",
                        fontWeight: FontWeight.w500,
                        fontSize: 10.sp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.05),
                AppButton(
                  text: "Log In",
                  onTap: () {},
                  color: Colors.pink.shade200,
                ),
                SizedBox(height: size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 5,
                      width: 100,
                      color: AppColors.secondaryColor,
                    ),
                    AppText(
                      text: "or continue with",
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      color: AppColors.secondaryColor,
                    ),
                    Container(
                      height: 5,
                      width: 100,
                      color: AppColors.secondaryColor,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          ImagePath.facebook,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          ImagePath.google,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          ImagePath.linkedin,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryColor,
              ),
              children: [
                const TextSpan(
                  text: "Don't have an account? ",
                ),
                TextSpan(
                  text: "Sign up",
                  style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
