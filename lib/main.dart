import 'package:flutter/material.dart';

void main(){
  runApp(FetchData());
}

class FetchData extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch data'),
        ),
        body: Container(),
      ),
    );
  }
}