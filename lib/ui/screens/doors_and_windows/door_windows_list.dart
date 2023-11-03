import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
import 'package:steel_zib/ui/screens/doors_and_windows/door_and_windows_vm.dart';
class DoorsAndWindows extends StatefulWidget {
  const DoorsAndWindows({Key? key}) : super(key: key);

  @override
  State<DoorsAndWindows> createState() => _DoorsAndWindowsState();
}

class _DoorsAndWindowsState extends State<DoorsAndWindows> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DoorsAndWindowsVm>(
      builder: (context,vm,_){
        return Scaffold(
          backgroundColor: AppColors.primaryAppColor,
          appBar: AppBar(
            title: Text(
              'Windows And Doors',
              style: AppFonts.signInText,
            ),
            backgroundColor: AppColors.primaryAppColor,
            foregroundColor: AppColors.whiteColor,
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: vm.windowsAndDoor.length,
              itemBuilder: (context,index){
                var finalList=vm.windowsAndDoor[index];
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
                  child: Column(
                    children: [
                      Image.asset(
                        finalList,
                      ),
                    ],
                  ),
                );

              },
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
