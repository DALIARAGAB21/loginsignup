import 'package:flutter/material.dart';

class Textformcustemwidget extends StatelessWidget {
  Textformcustemwidget({required this.contrloe,required this.valid,required this.lab});
  TextEditingController contrloe;
  String lab;
  String? Function(String?)?valid;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: contrloe,
      validator: valid,
      decoration: InputDecoration(
          label: Text(lab)
      ),
    );
  }
}