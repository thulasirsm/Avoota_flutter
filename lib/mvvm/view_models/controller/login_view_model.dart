import 'package:flutter/material.dart';
import 'package:avoota/mvvm/res/routes/routes_name.dart';
import 'package:avoota/mvvm/utils/utils.dart';
import 'package:get/get.dart';

import '../../models/user_model.dart';
import '../../repository/login_repository.dart';
import 'user_preference/user_prefrence_view_model.dart';


class LoginViewModel extends GetxController {

  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();

  final emailController = TextEditingController().obs ;
  final passwordController = TextEditingController().obs ;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;


  void loginApi(){
    loading.value = true ;
    Map data = {
      'email' : emailController.value.text,
      'password' : passwordController.value.text
    };
    _api.loginApi(data).then((value){
      loading.value = false ;

      if(value['error'] == 'user not found'){
        Utils.snackBar('Login', value['error']);
      }else {

        UserModel userModel = UserModel(
            token: value['token'] ,
          isLogin: true
        );

        userPreference.saveUser(userModel).then((value){

          // releasing resouces because we are not going to use this

          Get.offAndToNamed(RouteName.mainView)!.then((value){});
          Utils.snackBar('Login', 'Login successfully');
          Get.delete<LoginViewModel>();
        }).onError((error, stackTrace){

        });


      }
    }).onError((error, stackTrace){
      loading.value = false ;
      Utils.snackBar('Error', error.toString());
    });
  }
}