import 'package:flutter/material.dart';
import 'package:untitled1/app-colors.dart';

class AppButtons extends StatelessWidget{

  final Widget? textButton ;
  final void Function()?  funcButton ;

  AppButtons({required this.textButton,required this.funcButton});

  @override
  Widget build(BuildContext context) {


    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(AppColors().primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
        ),
        onPressed: funcButton,
        child: textButton,
      ),
    );
  }

}