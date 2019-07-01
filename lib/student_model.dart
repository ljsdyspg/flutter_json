class Student{
  String id;
  String name;
  int score;
  // Student构造函数
  Student({
    this.id,
    this.name,
    this.score
  });
  // 工厂构造函数
  factory Student.fromJson(Map<String, dynamic> parsedJson){
    return Student(
        id: parsedJson['id'],
        name : parsedJson['name'],
        score : parsedJson ['score']
    );
  }
}
