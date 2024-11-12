import 'package:flutter/material.dart';


import '../models/loginmodel.dart';
import '../serviecs/USerserviecs.dart';

class providerUsers extends ChangeNotifier{
  ModelUserr?modelus;
  Future<void>featchallusers()async{
    modelus=await Servsesuserss.getalluserss();
    notifyListeners();
  }
  Future<bool>featchpostusers(String name,String pass,String email,String phone,int age)async{
    try {
      await Servsesuserss.postallusers(name, pass, email, phone,age);
      notifyListeners();
      return true;
    }catch(e){
      return true;
    }

  }
}