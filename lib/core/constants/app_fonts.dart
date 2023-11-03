import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';




class AppFonts{

  static TextStyle appBarTextStyle1=GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 18.px,
    color: AppColors.primaryTextColor,
  );

  static TextStyle appBarTextStyle2=GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 18.px,
    color: AppColors.secondaryTextColor,

  );

  static TextStyle homeSimpleText=GoogleFonts.ropaSans(
    fontWeight: FontWeight.w400,
    fontSize: 18.px,
    color: AppColors.primaryAppColor

  );
  static TextStyle homeSimpleTextWhite=GoogleFonts.ropaSans(
    fontWeight: FontWeight.w400,
    fontSize: 18.px,

  );
  static TextStyle homeSimpleTextColor=GoogleFonts.ropaSans(
    fontWeight: FontWeight.w400,
    fontSize: 18.px,
    color: AppColors.primaryAppColor

  );
  static TextStyle signInText=GoogleFonts.ropaSans(
    fontWeight: FontWeight.w400,
    fontSize: 24.px,

  );
  static TextStyle signInButtonText=GoogleFonts.ropaSans(
    fontWeight: FontWeight.w400,
    fontSize: 20.px,

  );
  static TextStyle drawerSingInText=GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
    fontSize: 15.px,

  );
  static TextStyle serversListText=GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 15.px,

  );
  static TextStyle drawerItemText=GoogleFonts.ropaSans(
    fontWeight: FontWeight.w400,
    fontSize: 15.px,

  );

}