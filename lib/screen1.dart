

import 'package:flutter/material.dart';
import 'package:ts_task/detailscreen.dart';
import 'package:ts_task/screen3.dart';
void main()
{
  runApp(screen1());
}
class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    var arr=['Mr Abdullah','Zubair Shahid','Haider Fayyaz','Daud Javed','Ziad Tariq','Samran Qaiser','Dua Shahid','Nabiha Asghar'];
    var array=['Project Manager','Software Developer','Web Developer','Project Manager','Software Developer','Web Developer','Project Manager','Software Developer',];
    return MaterialApp(debugShowCheckedModeBanner: false,
        home:
        Scaffold(appBar: AppBar(title: Text("TECHNOSOFT",style: TextStyle(color: Colors.white),) ,
          backgroundColor: Colors.blue[500],
          centerTitle: true,
        ),
body: ListView.separated(itemBuilder: (context, index) {
  return ListTile(

    title: Text(arr[index]),
    subtitle: Text(array[index]),
    trailing: Icon(Icons.add),
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>detailscreen()));
    },
  );
},
  itemCount:arr.length ,
  separatorBuilder: (context, index){
  return Divider(height: 40,thickness: 5,);
  },
),
        ));
  }
}
