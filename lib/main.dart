import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<Post> fetchPost() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

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