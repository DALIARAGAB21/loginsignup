class ModelUserr{
  String Name;
  String Pass;
  String Email;
  String Phone;
  int age;
  ModelUserr({required this.Name,required this.Pass,required this.Email,required this.Phone,required this.age});
  factory ModelUserr.fromjson(Map<String,dynamic>json){
    return ModelUserr(Name: json['username'],Pass: json['password'],Email: json['email'],Phone: json['phone'],age: json['age']);
  }
}