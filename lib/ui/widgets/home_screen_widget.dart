import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';


class HomeItemWidget extends StatelessWidget {
  final String title;
  final String picture;
  final VoidCallback onPressed;
  const HomeItemWidget({
    required this. title,
    required this.picture,
    required this. onPressed,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: Container(
        height: 10.h,
        width: 20.w,
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.sp),
            bottomRight: Radius.circular(20.sp),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.teal.withOpacity(0.5), // Color of the shadow
              offset: Offset(2, 2), // Offset of the shadow (x, y)
              blurRadius: 4, // Spread of the shadow
              spreadRadius: 3, // Spread radius of the shadow
            ),
          ],
          color: AppColors.primaryAppColor.withOpacity(0.7),
        ),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children:[
            Image.asset(
              picture,
              height: 60,
              width: 60,
              color: Colors.white,
            ),
            Text(
              title,
              style:AppFonts.appBarTextStyle1,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}