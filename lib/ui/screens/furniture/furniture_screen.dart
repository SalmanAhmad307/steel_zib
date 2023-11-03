import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
import 'package:steel_zib/ui/screens/furniture/furniture_screen_vm.dart';
class FurnitureScreen extends StatefulWidget {
  const FurnitureScreen({Key? key}) : super(key: key);

  @override
  State<FurnitureScreen> createState() => _FurnitureScreenState();
}

class _FurnitureScreenState extends State<FurnitureScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FurnitureScreenVm>(
      builder: (context,vm,_){
        return Scaffold(
          backgroundColor: AppColors.primaryAppColor,
          appBar: AppBar(
            title: Text(
              'Furniture',
              style: AppFonts.signInText,
            ),
            backgroundColor: AppColors.primaryAppColor,
            foregroundColor: AppColors.whiteColor,
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 2.sp),
            child: ListView.builder(
              itemCount: vm.furnitureList.length,
              itemBuilder: (context,index){
                var finalList=vm.furnitureList[index];
                return Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.h),
                      border: Border.all(
                        color: AppColors.primaryAppColor,
                        width: 2.w,
                      )
                  ),
                  child:Image.asset(
                    finalList,
                  ),
                );

              },
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton(

            backgroundColor: Colors.white,
            onPressed: (){

            },
            child:Icon(Icons.add,color: Colors.teal,) ,
          ),
        );

      },

    );
  }
}
