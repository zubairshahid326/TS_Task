import 'package:flutter/material.dart';
void main()
{
  runApp(const screen2());
}
class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue[500],
      title: Text("Login Screen",style: TextStyle(color: Colors.white),),
      centerTitle: true,
     ),

    );
  }
}

