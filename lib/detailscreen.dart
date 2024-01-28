import 'package:flutter/material.dart';
void main()
{
  runApp(detailscreen());
}
class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue[500],
      title: Text("TECHNOSOFT",style: TextStyle(color: Colors.white),),
      centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/img1.png',width: 150,),
            Text('Zubair Shahid',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            Text('Software Engineer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    ),
    )
    );
  }
}
