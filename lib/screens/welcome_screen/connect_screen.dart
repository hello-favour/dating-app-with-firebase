import 'package:datin_app/components/app_text.dart';
import 'package:datin_app/constants/image_path.dart';
import 'package:datin_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  final _control = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.20),
            Image.asset(ImagePath.connectImage),
            SizedBox(height: size.height * 0.07),
            AppText(
              text: "Make new friends, Find love.",
              fontSize: 15.sp,
            ),
            SizedBox(height: size.height * 0.02),
            const AppText(
              text:
                  "Our algorithm helps you find people with music, \n anime and book interest as you",
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SmoothPageIndicator(
                    controller: _control,
                    count: 2,
                    effect: const SwapEffect(
                      activeDotColor: AppColors.primaryColor,
                      dotColor: AppColors.secondaryColor,
                      dotHeight: 20,
                      spacing: 10,
                      dotWidth: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Column(
            //   children: [
            //     PageView(
            //       children: const [
            //         FirstScreen(),
            //         MakeFriendsScreen(),
            //       ],
            //     ),
            //     SmoothPageIndicator(
            //       controller: _control,
            //       count: 2,
            //       effect: const ExpandingDotsEffect(
            //         activeDotColor: AppColors.primaryColor,
            //         dotColor: AppColors.secondaryColor,
            //         dotHeight: 30,
            //         dotWidth: 30,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
