import 'package:datin_app/screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Dating App',
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "poppins",
          primarySwatch: Colors.blue,
        ),
        home: const FirstScreen(),
      );
    });
  }
}
