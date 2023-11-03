import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_zib/core/constants/app_colors.dart';
import 'package:steel_zib/core/constants/app_fonts.dart';
import 'package:steel_zib/ui/screens/furniture/furniture_screen_vm.dart';
import 'package:steel_zib/ui/screens/home_accessories/home_accessories_vm.dart';
class HomeAccessoriesScreen extends StatefulWidget {
  const HomeAccessoriesScreen({Key? key}) : super(key: key);

  @override
  State<HomeAccessoriesScreen> createState() => _HomeAccessoriesScreenState();
}

class _HomeAccessoriesScreenState extends State<HomeAccessoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeAccessoriesVm>(
      builder: (context,vm,_){
        return Scaffold(
          backgroundColor: AppColors.primaryAppColor,
          appBar: AppBar(
            title: Text(
              'Home Accessories',
              style: AppFonts.signInText,
            ),
            backgroundColor: AppColors.primaryAppColor,
            foregroundColor: AppColors.whiteColor,
            centerTitle: true,
          ),
          body: ListView.builder(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            itemCount: vm.homeAccessories.length,
            itemBuilder: (context,index){
              var finalList=vm.homeAccessories[index];
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color:Colors.white,
                        width: 2.w,
                      ),
                    color:Colors.white54,
                  ),
                  child:Center(
                    child: Image.asset(
                      finalList,
                    ),
                  ),
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
