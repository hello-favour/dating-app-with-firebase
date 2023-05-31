import 'package:datin_app/screens/welcome_screen/connect_screen.dart';
import 'package:datin_app/screens/welcome_screen/find_perfect_match.dart';
import 'package:datin_app/screens/welcome_screen/make_friends_screen.dart';
import 'package:datin_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                MakeFriendsScreen(),
                ConnectScreen(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: const ExpandingDotsEffect(
              activeDotColor: AppColors.primaryColor,
              dotColor: AppColors.secondaryColor,
              dotHeight: 30,
              dotWidth: 30,
            ),
          ),
        ],
      ),
    );
  }
}
