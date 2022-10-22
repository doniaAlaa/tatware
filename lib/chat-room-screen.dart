import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:untitled1/app-colors.dart';
import 'package:untitled1/app-text-style.dart';

class ChatScreen extends StatefulWidget{
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  bool selected = false;

  List<String> texts = [];
  final myController = TextEditingController();

  // List<Message> message = [
  //   Message(
  //     text: 'yes',
  //     date:
  //     isSentByme : false
  //   ),
  //   Message(
  //     text: 'yes',
  //     date:
  //     isSentByme : false
  //   ),
  // ] ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          // Expanded(child: GroupedListView<Message,DateTime>(elements:message, groupBy: (message)=> DateTime(2022) ,)),
          Expanded(child: ListView.builder(

              itemCount:texts.length ,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Flexible(
                        child: Container(
                          // constraints: BoxConstraints(
                          //   maxWidth: MediaQuery.of(context).size.width * 0.6
                          //
                          // ),
                          // color: AppColors().primaryColor,
                          decoration:BoxDecoration(
                            color: AppColors().primaryColor,
                            borderRadius:  BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(texts[index],style: AppTextStyle().weightfont14,),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Image.asset('assets/Icon.png'),
                    ],
                  ),
                );
              })),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    // height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius:  BorderRadius.circular(15),
                    ),
                    child:
                     TextField(
                       controller: myController,

                        decoration: InputDecoration(
                            icon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/path.png'),
                            ),
                            suffixIcon:Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Image.asset('assets/voice.png'),
                            ),
                            fillColor: Colors.grey.shade300,

                            filled: true, //<-- SEE HERE
                            border: InputBorder.none,

                            hintText: 'Type Something ...'
                        ),

                      ),

                  ),
                ),
                // SizedBox(width: 6,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            if(myController.text.length>0){
                              texts.add(myController.text);
                              print(texts);
                              myController.clear();
                            }
                          });
                    },
                        child: Image.asset('assets/send.png')))
              ],
            ),
          ),

          SizedBox(height:15,)
        ],
      ),
    );
  }
}