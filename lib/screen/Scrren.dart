import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/signupprovider.dart';
import '../widget/widget.dart';
import 'home.dart';

class SignupSCreen extends StatelessWidget {
  SignupSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name =TextEditingController();
    TextEditingController pass =TextEditingController();
    TextEditingController email =TextEditingController();
    TextEditingController phone =TextEditingController();
    TextEditingController age =TextEditingController();
    final formkk=GlobalKey<FormState>();

    return  Scaffold(
      body: Consumer(builder: (BuildContext context,providerUsers provider, Widget? child)
      {
        return Form(
          key:formkk,
          child: Column(
              children: [
                Textformcustemwidget(
                  contrloe:name,
                  valid:(valuee) {
                    if(valuee==null||valuee.isEmpty){
                      return"please enter data";
                    }
                    return null;
                  },
                  lab: "name",
                ),
                Textformcustemwidget(
                  contrloe:pass,
                  valid:(valuee) {
                    if(valuee==null||valuee.isEmpty){
                      return"please enter data";
                    }
                    return null;
                  },
                  lab: "pass",
                ),
                Textformcustemwidget(
                  contrloe:email,
                  valid:(valuee) {
                    if(valuee==null||valuee.isEmpty){
                      return"please enter data";
                    }
                    return null;
                  },
                  lab: "email",
                ),
                Textformcustemwidget(
                  contrloe:phone,
                  valid:(valuee) {
                    if(valuee==null||valuee.isEmpty){
                      return"please enter data";
                    }
                    return null;
                  },
                  lab: "phone",
                ),
                Textformcustemwidget(
                  contrloe:age,
                  valid:(valuee) {
                    if(valuee==null||valuee.isEmpty){
                      return"please enter data";
                    }
                    return null;
                  },
                  lab: "age",
                ),
                ElevatedButton(onPressed: ()async{
                  bool succ=await provider.featchpostusers(name.text, pass.text, email.text, phone.text, int.parse(age.text));
                  if(succ){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  }
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));

                }, child: Text("sign up"))
              ]
          ),
        )  ;
      },),
    );
  }
}