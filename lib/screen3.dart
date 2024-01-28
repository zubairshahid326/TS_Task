import 'package:flutter/material.dart';
void main()
{
  runApp(const screen3());
}
class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue[500],
      title: Text("Login Screen",style: TextStyle(color: Colors.white),),
      ),
    body: Column(
     mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Padding(
          padding: const EdgeInsets.all(20),
          child: Text("Login",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
        ),

Padding(
  padding: const EdgeInsets.all(10),
  child: Form(
      child:
  Column(
    children: [
      TextFormField(
        keyboardType: TextInputType.emailAddress,decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Email",
        prefixIcon: Icon(Icons.email),
        border: OutlineInputBorder(),

      ),

      ),
      SizedBox(height: 30,),
      TextFormField(
        keyboardType: TextInputType.emailAddress,decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Password",
        prefixIcon: Icon(Icons.password),
        border: OutlineInputBorder(),
      ),
      )
    ],
  )),
),
        MaterialButton(onPressed: (){},
          child: Text("Login"),
          color:Colors.teal,
          textColor: Colors.white,
        )
      ],

      
    ),
      backgroundColor: Colors.blue[300],
    ));
  }
}
