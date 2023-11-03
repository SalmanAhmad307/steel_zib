import 'package:flutter/material.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: AppFonts.appBarTextStyle1,
        ),
        backgroundColor: AppColors.primaryAppColor,
        foregroundColor: AppColors.whiteColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
