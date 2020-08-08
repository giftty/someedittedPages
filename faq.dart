
import 'package:flutter/material.dart';
import 'package:lwnm/theclasses.dart';

class Faq extends StatefulWidget {
  Faq({Key key}) : super(key: key);

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text('FAQ'), backgroundColor: PCDLStyle.pcdlBlue,),
      body:Container(
       child: Center( child:Text('FAQ'))
    ));
  }
}