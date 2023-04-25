// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Person {
  final int age;
  final String name;

  Person({
    required this.age,
    required this.name,
  });

  Person copyWith({
    int? age,
    String? name,
  }) {
    return Person(
      age: age ?? this.age,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age,
      'name': name,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      age: map['age'] as int,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(age: $age, name: $name)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;
  
    return 
      other.age == age &&
      other.name == name;
  }

  @override
  int get hashCode => age.hashCode ^ name.hashCode;
}
