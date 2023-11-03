import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
class DrawerScreenWidgets extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  const DrawerScreenWidgets({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.only(left: 20,right: 20),
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.whiteColor,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.primaryAppColor,
              ),
              SizedBox(width: 10.w),
              Text(
                  title,
                  style:AppFonts.signInText.copyWith(
                    color: AppColors.primaryAppColor,
                    fontSize: 18.px
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
