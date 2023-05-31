import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color? color;
  final double? size;
  final IconButton? suffixIcon;
  final bool obsecuretext;
  const AppTextField({
    Key? key,
    required this.text,
    required this.icon,
    this.color,
    this.size,
    this.suffixIcon,
    this.obsecuretext = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.black,
        fontSize: 10.sp,
      ),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(8.w, 1.h, 1.w, 2.h),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: icon,
        suffixIcon: suffixIcon,
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 10.sp,
        ),
      ),
      obscureText: obsecuretext,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
