import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
import 'package:steel_zib/ui/screens/containers/container_screen_vm.dart';

class ContainersListScreen extends StatefulWidget {
  const ContainersListScreen({super.key});

  @override
  State<ContainersListScreen> createState() => _ContainersListScreenState();
}

class _ContainersListScreenState extends State<ContainersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ContainerScreenVm>(
      builder: (context,vm,_){
        return Scaffold(
          backgroundColor: AppColors.primaryAppColor,
          appBar: AppBar(
            title: Text(
              'Containers List',
              style: AppFonts.signInText,
            ),
            backgroundColor: AppColors.primaryAppColor,
            foregroundColor: AppColors.whiteColor,
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 2.sp),
            child: ListView.builder(
              itemCount: vm.containersList.length,
              itemBuilder: (context,index){
                var finalList=vm.containersList[index];
                return Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.h),
                      border: Border.all(
                        color: AppColors.primaryAppColor.withOpacity(0.3),
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
