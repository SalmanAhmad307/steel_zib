import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:ndialog/ndialog.dart';
import 'package:steel_zib/core/utils/utils.dart';

class SignUpVm extends ChangeNotifier{
  FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  FirebaseFirestore userRef=FirebaseFirestore.instance;
  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var mobileNoController=TextEditingController();
  var addressController=TextEditingController();
  bool _isLoading=false;
  var _passwordOb = true;
  var myFormKey=GlobalKey<FormState>();
  var name,email,mobileNo,address,password;


  bool get  passwordOb => _passwordOb;


  setLoading(value){
    _isLoading=value;
    notifyListeners();
  }
  setPasswordOb(){
    _passwordOb=!_passwordOb;
    notifyListeners();
  }

  Future<void> registerUserWithEmailAndPassword(
      BuildContext context) async {

    setLoading(true);
    ProgressDialog progressDialog = ProgressDialog(context, title: Text('Registering'), message: Text('Please Wait'));
    progressDialog.show();

    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String userId = userCredential.user!.uid;

      // Store user information in Firestore
      await userRef.collection('users').doc(userId).set({
        'name':nameController.text,
        'email':emailController.text,
        'contactNo':mobileNoController.text,
        'address':addressController.text,
        'password':passwordController.text,
      });
      // Send email verification
      progressDialog.dismiss();
      Utils.toastMessage('Sign in Successful');

    } catch (e) {
      progressDialog.dismiss();
      print("error is ${e.toString()}");
      setLoading(false);
      Utils.toastMessage(e.toString());
    }
  }
}