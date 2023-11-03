

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class SignInVm extends ChangeNotifier{
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  final myFormKey=GlobalKey<FormState>();
  bool _isLoading=false;
  var _passwordOb = true;
  var email,password;

  bool get  passwordOb => _passwordOb;
  setLoading(value){
    _isLoading=value;
    notifyListeners();
  }
  setPasswordOb(){
    _passwordOb=!_passwordOb;
    notifyListeners();
  }
}