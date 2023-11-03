import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
import 'package:steel_zib/ui/screens/auth/signin/signin_screen.dart';
import 'package:steel_zib/ui/screens/auth/signup/signup_screen_vm.dart';
import 'package:steel_zib/ui/screens/home/home_Screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpVm>(builder: (context, vm, _) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: vm.myFormKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: AppColors.primaryAppColor,
                          )),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'SignUp',
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
                            text: 'Name',
                            style: AppFonts.homeSimpleTextColor,
                            children: <TextSpan>[
                              TextSpan(
                                text: '*',
                                style: AppFonts.homeSimpleTextColor.copyWith(
                                  color: Colors.red,
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    TextFormField(
                      controller: vm.nameController,
                      style: const TextStyle(
                        color: Colors.teal,
                      ),
                      cursorColor: Colors.teal,
                      decoration: InputDecoration(
                        suffixIcon:Icon(
                          Icons.person_outline,
                          color: AppColors.primaryAppColor,
                        ),
                        hintText: 'Name',
                        hintStyle: AppFonts.homeSimpleText,
                        fillColor: Colors.teal,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(
                              r'^[a-zA-Z\s]*$',
                            ).hasMatch(value)) {
                          return 'please provide your name';
                        } else {
                          vm.name = value;
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
                            text: 'Email',
                            style: AppFonts.homeSimpleTextColor,
                            children: <TextSpan>[
                              TextSpan(
                                text: '*',
                                style: AppFonts.homeSimpleTextColor.copyWith(
                                  color: Colors.red,
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
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
                        hintText: ' Email',
                        hintStyle: AppFonts.homeSimpleText,
                        fillColor: Colors.teal,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}')
                                .hasMatch(value!)) {
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
                            text: 'Contact',
                            style: AppFonts.homeSimpleTextColor,
                            children: <TextSpan>[
                              TextSpan(
                                text: '*',
                                style: AppFonts.homeSimpleTextColor.copyWith(
                                  color: Colors.red,
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    TextFormField(
                      controller: vm.mobileNoController,
                      style: const TextStyle(
                        color: Colors.teal,
                      ),
                      cursorColor: Colors.teal,
                      decoration: InputDecoration(
                        suffixIcon:Icon(
                          Icons.contacts,
                          color: AppColors.primaryAppColor,
                        ),
                        hintText: 'Contact',
                        hintStyle: AppFonts.homeSimpleText,
                        fillColor: Colors.teal,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                .hasMatch(value!)) {
                          return 'please provide your mobile no';
                        } else {
                          vm.mobileNo = value;
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
                            text: 'Address',
                            style: AppFonts.homeSimpleTextColor,
                            children: <TextSpan>[
                              TextSpan(
                                text: '*',
                                style: AppFonts.homeSimpleTextColor.copyWith(
                                  color: Colors.red,
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    TextFormField(
                      controller: vm.addressController,
                      style: const TextStyle(
                        color: Colors.teal,
                      ),
                      cursorColor: Colors.teal,
                      decoration: InputDecoration(
                        suffixIcon:Icon(
                            Icons.location_on_outlined,
                          color: AppColors.primaryAppColor,
                        ),
                        hintText: 'Address',
                        hintStyle: AppFonts.homeSimpleText,
                        fillColor: Colors.teal,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please provide address';
                        } else {
                          vm.address = value;
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
                            style: AppFonts.homeSimpleTextColor,
                            children: <TextSpan>[
                              TextSpan(
                                text: '*',
                                style: AppFonts.homeSimpleTextColor.copyWith(
                                  color: Colors.red,
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
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
                          borderSide: BorderSide(color: Colors.teal, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
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
                      height: 5.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (tx) {
                          return const SignInScreen();
                        }));
                        // if(vm.myFormKey.currentState!.validate()){
                        //   //vm.registerUserWithEmailAndPassword(context);
                        //
                        // }
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
                            'Signup',
                            style: AppFonts.signInText.copyWith(
                              color: const Color(0xFFFFFFFF),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
