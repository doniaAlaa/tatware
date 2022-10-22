import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/app-colors.dart';
import 'package:untitled1/app-text-style.dart';
import 'package:untitled1/chat-room-screen.dart';
import 'package:untitled1/favorite-screen.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0 ;
  final screens = [
    Home(),
    FavoriteScreen(),
    ChatScreen(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisSize: MainAxisSize.min,

         // shrinkWrap: true,
        children: [
          ListTile(
            title: Text('Recommended Experts',style: AppTextStyle().font16),
            trailing: IconButton(

              // HERE TO OPEN BOTTOM SHEET

              icon: Icon(Icons.keyboard_control_rounded),
              onPressed: (){
                showModalBottomSheet<void>(
                  shape:  RoundedRectangleBorder( // <-- SEE HERE
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30.0),
                    ),),
                  context: context,
                  builder: (BuildContext context) {
                    return  Center(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          SizedBox(height: 70,),

                          ReusableOptions(firsttext:Text('Information Technology'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/img1.png'),),
                          ReusableOptions(firsttext:Text('Supply Chain'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group115.png'),),
                          ReusableOptions(firsttext:Text('Security'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group116.png'),),
                          ReusableOptions(firsttext:Text('Human Resource'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group117.png'),),
                          ReusableOptions(firsttext:Text('Immigration'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group118.png'),),
                          ReusableOptions(firsttext:Text('Translation'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group119.png'),),

                        ],
                      ),

                    );
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.38,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffe0e0e0), //                   <--- border color
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(13))
                ),
                child:  Column(
                  children: [
                    Image.asset('assets/960x0(1).png'),
                    ListTile(
                      contentPadding:EdgeInsets.all(0),
                      minLeadingWidth: 5,
                      horizontalTitleGap: 0,
                      leading: Icon(Icons.star,color:Colors.amber,),
                      title: Text('(5.0)',style: AppTextStyle().grayfont1,),
                      trailing: Icon(Icons.favorite,color:Colors.grey,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                          child: Text('Kareem Adel',style: AppTextStyle().font14)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('supply chain',style: AppTextStyle().font12)),
                    ),
                    SizedBox(height: 8,)
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.38,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffe0e0e0), //                   <--- border color
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(13))
                ),
                child:  Column(
                  children: [
                    Image.asset('assets/960x0.png'),
                    ListTile(
                      contentPadding:EdgeInsets.all(0),
                      minLeadingWidth: 5,
                      horizontalTitleGap: 0,
                      leading: Icon(Icons.star,color:Colors.amber,),
                      title: Text('(5.0)',style: AppTextStyle().grayfont1,),
                      trailing: Icon(Icons.favorite,color:Colors.grey,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                          child: Text('Merna Adel',style: AppTextStyle().font14,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('supply chain',style: AppTextStyle().font12)),
                    ),
                    SizedBox(height: 8,)
                  ],
                ),
              ),


            ],
          ),
          SizedBox(height: 15,),
          ListTile(
            title: Text('Online Experts',style: AppTextStyle().font16),
            trailing: Icon(Icons.keyboard_control_rounded),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount:5,
                itemBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 4,
                                      color: Theme.of(context).scaffoldBackgroundColor),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(0, 10))
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/960x0(1).png'))),
                            ),
                            Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                    ),
                                    color: Colors.green,
                                  ),
                                  child: Text('')
                                )),
                          ],
                        ),
                        SizedBox(height:10,),
                        Text("data")
                      ],
                    ),
                  ),

            ),
          ),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    shape:  RoundedRectangleBorder( // <-- SEE HERE
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.0),
                      ),),
                    context: context,
                    builder: (BuildContext context) {
                      return  Center(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            SizedBox(height: 70,),

                            ReusableOptions(firsttext:Text('Information Technology'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/img1.png'),),
                            ReusableOptions(firsttext:Text('Supply Chain'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group115.png'),),
                            ReusableOptions(firsttext:Text('Security'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group116.png'),),
                            ReusableOptions(firsttext:Text('Human Resource'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group117.png'),),
                            ReusableOptions(firsttext:Text('Immigration'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group118.png'),),
                            ReusableOptions(firsttext:Text('Translation'),secondtext: Text('23 Experts'),arrow:Image.asset('assets/Group119.png'),),

                          ],
                        ),

                      );
                    },
                  );
                },
                child: Container(child: Image.asset('assets/rec.png')),
              ),
            ),

        ],


      ),


    );
  }
}

class ReusableOptions extends StatelessWidget{
  final Widget firsttext ;
  final Widget secondtext ;
  final Widget arrow;

  ReusableOptions({required this.firsttext , required this.secondtext ,required this.arrow });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.70,

        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffe0e0e0), //                   <--- border color
              width: 1.2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(13))
        ),
        child:  ListTile(
          leading: arrow,
          title: firsttext,
          subtitle: secondtext,
          trailing:Icon(Icons.arrow_forward_ios_rounded,color: AppColors().grayColor,) ,
        ),
      ),
    );
  }

}