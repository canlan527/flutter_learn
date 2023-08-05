void main(List<String> args) {
  
}

class Human {
  String? name;
  int? age;

  Human(name, age);
}

// 继承 extends
// 继承属性 super
class Male extends Human{
  String sex = 'male';
  Male(this.sex, String name, int age):super(name, age); 
}

class Female extends Human {
  String sex = 'female';
  Female(this.sex, String name, int age): super(name, age);
}