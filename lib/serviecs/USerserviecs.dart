import 'package:dio/dio.dart';


import '../models/loginmodel.dart';
class Servsesuserss{
  static  Dio dio=Dio();
  static Future<ModelUserr>getalluserss()async{
    const String url="http://localhost:5215/api/Signup/Getuser";
    Response respone=await dio.get(url);
    if(respone.statusCode==200){
      return ModelUserr.fromjson(respone.data);
    }else{
      throw Exception("error");
    }
  }
  static Map postusers={"username":"","password":"","email":"","phone":"",'age':1};
  static Future<void>postallusers(String name,String pass,String email,String phone,int age)async{
    postusers['username']=name;
    postusers['password']=pass;
    postusers['email']=email;
    postusers['phone']=phone;
    postusers['age']=age;
    const String url="http://localhost:5215/api/Signup/Sign Up";
    await dio.post(url,data: postusers);
    print(postusers);
  }
}