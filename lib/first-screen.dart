import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/app-colors.dart';
import 'package:untitled1/chat-room-screen.dart';
import 'package:untitled1/favorite-screen.dart';
import 'package:untitled1/home-screen.dart';
import 'package:untitled1/wallet-screen.dart';

class FirstScreen extends StatefulWidget{
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  int currentIndex = 0 ;
  final screens = [
    Home(),
    FavoriteScreen(),
    WalletScreen(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
      leadingWidth: 50,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: CircleAvatar(
          backgroundImage:  AssetImage('assets/960x0(1).png'),
        ),
      ) ,
      title: Center(child: Image.asset('assets/logo.png')),
      actions: [
        GestureDetector(
          onTap: (){

          },
          child: Image.asset('assets/Search.png'),

        )

      ],
    ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset('assets/stroke2.png')
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/stroke1.png'),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/Wallet.png'),
              label: ''
          ),
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset('assets/Profile.png')
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  ChatScreen()),
          );
        },
        backgroundColor: AppColors().primaryColor,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}