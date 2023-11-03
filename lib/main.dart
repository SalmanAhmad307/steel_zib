
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/ui/screens/auth/signin/signin_screen.dart';
import 'package:steel_zib/ui/screens/auth/signin/signin_screen_vm.dart';
import 'package:steel_zib/ui/screens/auth/signup/signup_screen_vm.dart';
import 'package:steel_zib/ui/screens/doors_and_windows/door_and_windows_vm.dart';
import 'package:steel_zib/ui/screens/furniture/furniture_screen_vm.dart';
import 'package:steel_zib/ui/screens/home/drawer_vm.dart';
import 'package:steel_zib/ui/screens/home_accessories/home_accessories_vm.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext , Orientation , ScreenType ) {
        return  MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => SignUpVm()),
            ChangeNotifierProvider(create: (context) => SignInVm()),
            ChangeNotifierProvider(create: (context) => DoorsAndWindowsVm()),
            ChangeNotifierProvider(create: (context) => FurnitureScreenVm()),
            ChangeNotifierProvider(create: (context) => HomeAccessoriesVm()),
            ChangeNotifierProvider(create: (context) => DrawerScreenVm()),

          ],
          child: MaterialApp(
            title: 'SteelShop',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home:const SignInScreen(),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}


