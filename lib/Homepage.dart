import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ts_task/screen1.dart';
import 'package:ts_task/screen2.dart';
import 'package:ts_task/screen3.dart';

class Todotasks extends StatefulWidget {
  const Todotasks({Key? key});

  @override
  State<Todotasks> createState() => _TodotasksState();
}

class _TodotasksState extends State<Todotasks> {
  int _selectedIndex = 0; // Track the selected tab index

  // Define your pages/screens
  final List<Widget> _pages = [
    SettingsScreen(),
    screen3(),
    screen1(),
    screen2(),

  ];

  // Handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedIndex],
      // Show the selected page
      bottomNavigationBar: GNav(
        gap: 6,
        tabs: [
          GButton(
            onPressed: (){
              Navigator.push(context,
                  PageTransition(child:SettingsScreen() , type:PageTransitionType.fade));
            },
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            onPressed: (){
              Navigator.push(context,
                  PageTransition(child:screen3() , type:PageTransitionType.bottomToTop));
            },
            icon: Icons.login,
            text: 'Login',
          ),
          GButton(
            onPressed: (){
              Navigator.push(context,
                  PageTransition(child:screen1() , type:PageTransitionType.fade));
            },
            icon: Icons.task,
            text: 'List',
          ),
          GButton(
            onPressed: (){
              Navigator.push(context,
                  PageTransition(child:screen2() , type:PageTransitionType.fade));
            },
            icon: Icons.task,
            text: '',
          ),
        ],
        selectedIndex: _selectedIndex, // Set the selected index
        onTabChange: _onItemTapped, // Handle tab change
      ),
    );
  }
}


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
      Scaffold(appBar: AppBar(title: Text("TECHNOSOFT",style: TextStyle(color: Colors.white),) ,
    backgroundColor: Colors.blue[500],
    centerTitle: true,
    ),
    body:Center(
      child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('assets/images/img2.png',width: 130,)
            ,Padding(
              padding: const EdgeInsets.only(top: 13,left: 10),
              child: Text("Flutter Task",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
            )

          ]
      ),
    ),

     backgroundColor: Colors.blue[300], ));
  }
}