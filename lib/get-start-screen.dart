import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/app-buttons.dart';
import 'package:untitled1/app-text-style.dart';
import 'package:untitled1/first-screen.dart';
import 'package:untitled1/home-screen.dart';

class GetStartscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.10,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.30,
            width: MediaQuery.of(context).size.width*0.85,
            // constraints: BoxConstraints.expand(),
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Path-107.png"),
                  fit: BoxFit.fill),
            ),
            child:  Text('Hi, My name is Oranobot I will always be there to help and assist you.Say Start To go to Next.',style: AppTextStyle().grayfont,),


          ),
          Container(
            height: MediaQuery.of(context).size.height*0.30,
            // width: MediaQuery.of(context).size.width*0.85,
            child: Image.asset('assets/Group-106.png'),
          ),
          Container(
              // height: MediaQuery.of(context).size.height*0.33,
              child: Container(
                width:150,
                height: 50,
                child: AppButtons(textButton:Text('Next',style: AppTextStyle().weightfont20,),
                  funcButton:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  FirstScreen()),
                );
            } ,),
              )),
          // Container(
          //   height: MediaQuery.of(context).size.height*0.10,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/path.png',color: Colors.black,),
              SizedBox(width: 10,),
              Text('English',style: AppTextStyle().font16black,),
            ],
          ),
          SizedBox(height: 15,)

        ],
      )
    );
  }

}