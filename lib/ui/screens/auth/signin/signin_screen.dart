import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
import 'package:steel_zib/ui/screens/auth/signin/signin_screen_vm.dart';
import 'package:steel_zib/ui/screens/auth/signup/signup_screen.dart';
import 'package:steel_zib/ui/screens/home/home_Screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SignInVm>(
      builder: (context, vm, _) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Padding(
              padding: EdgeInsets.only(
                left: 20.sp,
                right: 20.sp,
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: vm.myFormKey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: AppFonts.homeSimpleText.copyWith(
                                fontSize: 25.px, fontWeight: FontWeight.w800),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Email',
                                style: AppFonts.homeSimpleText,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '*',
                                    style: AppFonts.homeSimpleText
                                        .copyWith(color: Colors.red),
                                  )
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        TextFormField(
                          controller: vm.emailController,
                          style: const TextStyle(
                            color: Colors.teal,
                          ),
                          cursorColor: Colors.teal,
                          decoration: InputDecoration(
                            suffixIcon:Icon(
                              Icons.email_outlined,
                              color: AppColors.primaryAppColor,
                            ),
                            hintText: 'Email',
                            hintStyle: AppFonts.homeSimpleText,
                            fillColor: Colors.teal,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.teal, width: 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.teal, width: 2.0),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}')
                                    .hasMatch(value)) {
                              return 'please provide your email ';
                            } else {
                              vm.email = value;
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Password',
                                style: AppFonts.homeSimpleText,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '*',
                                    style: AppFonts.homeSimpleText
                                        .copyWith(color: Colors.red),
                                  )
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        TextFormField(
                          controller: vm.passwordController,
                          style: const TextStyle(
                            color: Colors.teal,
                          ),
                           obscureText: vm.passwordOb,
                          cursorColor: Colors.teal,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: AppFonts.homeSimpleText,
                            fillColor: Colors.teal,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.teal, width: 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.teal, width: 2.0),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                vm.setPasswordOb();
                              },
                              icon: Icon(vm.passwordOb
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined),
                              color: Colors.teal,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please provide password';
                            } else {
                              vm.password = value;
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/reset_password_screen');
                            },
                            child: Text(
                              'forget password',
                              style: AppFonts.homeSimpleText,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (tx)=>HomeScreen()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 6.5.h,
                            decoration: BoxDecoration(
                              color: AppColors.primaryAppColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Login',
                                style: AppFonts.signInText.copyWith(
                                  color: const Color(0xFFFFFFFF),
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Not a Member?',
                              style: AppFonts.signInText.copyWith(
                                color: AppColors.primaryAppColor,
                                fontSize: 18.px
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen()));
                              },
                              child: Text(
                                'signUp',
                                style: AppFonts.signInText.copyWith(
                                  color: AppColors.primaryAppColor,
                                    fontSize: 18.px
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
