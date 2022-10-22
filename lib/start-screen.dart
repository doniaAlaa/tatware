import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/app-buttons.dart';
import 'package:untitled1/app-text-style.dart';
import 'package:untitled1/get-start-screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/start-image.png"),
              fit: BoxFit.cover),
        ),
        child:
                 Column(

                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    Container(
                      // height: MediaQuery.of(context).size.height*0.33,
                    ),
                    Container(
                      // height: MediaQuery.of(context).size.height*0.35,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                  Text(
                                    'Oranos',
                                    style: AppTextStyle().bigFont,
                                  ),
                                 // Container(height:70 ,width: 200,child: Image.asset("assets/logo.png",fit: BoxFit.contain,)),
                                   SizedBox(height: 10,),
                                   Text(
                                   'Expert From Every Planet',
                                   style: AppTextStyle().grayfont,
                                 ),
                               ],
                             ),
                           ),
                    Container(
                      // height: MediaQuery.of(context).size.height*0.15,
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Container(width:MediaQuery.of(context).size.width*0.85,child: AppButtons(textButton:Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text('Get Started',style: AppTextStyle().weightfont20,),
                          ),
                            funcButton:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  GetStartscreen()),
                              );
                            } ,)),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don’t have an account?',style: AppTextStyle().font16,),
                              TextButton(onPressed: (){}, child: Text('SignUp',style: AppTextStyle().font12blue,))
                            ],
                          ),
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
                    ),




                  ],

        ),




      ),
    );
  }

}