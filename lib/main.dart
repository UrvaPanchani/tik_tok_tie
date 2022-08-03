import 'package:flutter/material.dart';
import 'package:tik_tok_tie/second.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: first(),));
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  @override
  void initState() {
    super.initState();

    loadimage();
  }

 loadimage()
 async {
   await Future.delayed(Duration(seconds: 3));
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
     return second();
   },));
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child:
        Container(
          color: Color(0xFFFF7575),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 300),
                child: Image.asset('images/ttt.jpg'),
              ),
              Container(
                child: Text(" Tik Tok Tie ",style: TextStyle(fontFamily: 'RockSalt',fontSize: 40),),
              )
            ],
          ),
        ))
    );
  }
}

