import 'package:flutter/material.dart';

import 'student_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Future<String> data = loadStudent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),// AppBar
      body: FutureBuilder( // 使用FutureBuilder使数据在获取后更新并显示
        future: data,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          }
          return Center(
            child: snapshot.hasData?Text(snapshot.data):Text("null"),
          );// Center
        },
      ),// FutureBuilder
    );//Scaffold
  }
}
