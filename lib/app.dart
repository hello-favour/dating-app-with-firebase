import 'package:datin_app/screens/home_page.dart';
import 'package:datin_app/screens/welcome_screen/find_perfect_match.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Dating App',
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "poppins",
            primarySwatch: Colors.blue,
          ),
          home: PageView.builder(itemBuilder: (context, index) {
            return FindPerfectMatchScreen();
          }),
        );
      },
    );
  }
}
