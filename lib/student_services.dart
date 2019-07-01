import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter_json/student_model.dart';

// 异步操作，从本地文件中加载JSON
Future<String> _loadAStudentAsset() async {
  return await rootBundle.loadString('jsons/student.json');
}
// 从JSON文件中反序列化得到对象，并返回描述字符串
Future<String> loadStudent() async {
  String jsonString = await _loadAStudentAsset(); // 加载原始Json字符串
  final jsonResponse = json.decode(jsonString); // 解码得到Json字符串
  Student student = new Student.fromJson(jsonResponse); // 反序列化得到Student对象
  String result = "id: " +
      student.id +
      "\nname: " +
      student.name +
      "\nscore: " +
      student.score.toString();
  return result;
}