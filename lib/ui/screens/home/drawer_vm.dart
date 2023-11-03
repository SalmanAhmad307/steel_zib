import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
import 'package:steel_zib/ui/screens/auth/signin/signin_screen.dart';

class DrawerScreenVm extends ChangeNotifier{

  showDialogBoxInApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.primaryAppColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.sp),
              topRight: Radius.circular(10.sp),
              bottomRight: Radius.circular(10.sp),
              bottomLeft: Radius.circular(10.sp),
            ),
          ),
          title: Text(
            'Are you sure you want to\n Sign Out',
            style: AppFonts.signInText.copyWith(
              color: AppColors.whiteColor,
              fontSize: 20.px,
            ),
            textAlign: TextAlign.center,
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (tx)=>const SignInScreen()));
                },
                child: Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Yes',
                      style: AppFonts.signInText.copyWith(
                        color: AppColors.primaryAppColor,
                        fontSize: 15.px,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'No',
                      style: AppFonts.signInText.copyWith(
                        color: AppColors.primaryAppColor,
                        fontSize: 15.px,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}