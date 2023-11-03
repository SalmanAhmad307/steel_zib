import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
import 'package:steel_zib/ui/screens/auth/signin/signin_screen.dart';
import 'package:steel_zib/ui/screens/containers/container_screen.dart';
import 'package:steel_zib/ui/screens/doors_and_windows/door_windows_list.dart';
import 'package:steel_zib/ui/screens/furniture/furniture_screen.dart';
import 'package:steel_zib/ui/screens/home/drawer_vm.dart';
import 'package:steel_zib/ui/screens/home/drawer_widget.dart';
import 'package:steel_zib/ui/screens/home_accessories/home_accessories_screen.dart';
import 'package:steel_zib/ui/screens/profile/profile_screen.dart';
import 'package:steel_zib/ui/widgets/home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: AppFonts.appBarTextStyle1,
        ),
        backgroundColor: AppColors.primaryAppColor,
        foregroundColor: AppColors.whiteColor,
        centerTitle: true,
      ),
      drawer: Consumer<DrawerScreenVm>(
        builder: (context, vm, _) {
          return Drawer(
            backgroundColor: AppColors.primaryAppColor,
            child: Padding(
              padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Menu',
                        style: AppFonts.signInText.copyWith(
                            fontSize: 25.px, color: AppColors.whiteColor),
                      )),
                  SizedBox(
                    height: 5.h,
                  ),
                  DrawerScreenWidgets(
                      title: 'abc@xyx.com',
                      icon: Icons.person_outline,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (tx) => const ProfileScreen()));
                      }),
                  SizedBox(
                    height: 3.h,
                  ),
                  DrawerScreenWidgets(
                      title: 'Home Accessories',
                      icon: Icons.chair_sharp,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (tx) =>
                                const HomeAccessoriesScreen()));
                      }),
                  SizedBox(
                    height: 3.h,
                  ),
                  DrawerScreenWidgets(
                      title: 'DoorsAndWindows',
                      icon: Icons.window,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (tx) => const DoorsAndWindows()));
                      }),
                  SizedBox(
                    height: 3.h,
                  ),
                  DrawerScreenWidgets(
                      title: 'Furniture',
                      icon: Icons.bed,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (tx) => const FurnitureScreen()));
                      }),
                  SizedBox(
                    height: 3.h,
                  ),
                  DrawerScreenWidgets(
                    title: 'Logout',
                    icon: Icons.logout_sharp,
                    onPressed: () {
                     vm.showDialogBoxInApp(context);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              'Select Category',
              style: AppFonts.appBarTextStyle2,
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: [
                  HomeItemWidget(
                      title: 'Home Accessories',
                      picture: 'assets/images/home_accessories/home.png',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (tx) =>
                                    const HomeAccessoriesScreen()));
                      }),
                  HomeItemWidget(
                      title: 'Doors and Windows',
                      picture: 'assets/images/doors_and_windows/doors.png',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (tx) => const DoorsAndWindows()));
                      }),
                  HomeItemWidget(
                      title: 'Furniture',
                      picture: 'assets/images/furniture/furniture.png',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (tx) => const FurnitureScreen()));
                      }),
                  HomeItemWidget(
                      title: 'Containers',
                      picture: 'assets/images/containers/container.png',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (tx) => const ContainersListScreen()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
