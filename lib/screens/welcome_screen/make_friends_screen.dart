import 'package:datin_app/components/app_text.dart';
import 'package:datin_app/constants/image_path.dart';
import 'package:datin_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MakeFriendsScreen extends StatefulWidget {
  const MakeFriendsScreen({super.key});

  @override
  State<MakeFriendsScreen> createState() => _MakeFriendsScreenState();
}

class _MakeFriendsScreenState extends State<MakeFriendsScreen> {
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
            Image.asset(ImagePath.makeFriendsImage),
            SizedBox(height: size.height * 0.15),
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
          ],
        ),
      ),
    );
  }
}
