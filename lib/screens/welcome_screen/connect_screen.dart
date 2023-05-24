import 'package:datin_app/components/app_text.dart';
import 'package:datin_app/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
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
            SizedBox(height: size.height * 0.15),
            AppText(
              text: "Connect with people in your city.",
              fontSize: 15.sp,
            ),
            SizedBox(height: size.height * 0.02),
            const AppText(
              text:
                  "Meet and chat with people in your city that are open for friendship and relationship",
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
