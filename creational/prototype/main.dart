/* Prototype design pattern is used to create objects from one instance
  * In dart we use copyWith to acheive this.
  * This is useful when we have to create multiple objects that are similar.
  * NOTE!: THIS SHOULD NEVER BE USED JUST TO MODIFY AN INSTANCE AS COPYWITH or prototype pattern CREATES A NEW INSTANCE.
*/

class Student {
  final String name;
  final String reg;
  
  Student({
    required this.name,
    required this.reg,
  });

  Student copyWith({
    String? name,
    String? reg,
  }) {
    return Student(
      name: name ?? this.name,
      reg: reg ?? this.reg,
    );
  }
}

void main(List<String> args) {
  Student student1 = Student(name: "Ahmad", reg: "052");
  Student student2 = student1.copyWith();
  print(student2.name);
  student2 = student1.copyWith(name: "Haider");
  print(student2.name);
}
