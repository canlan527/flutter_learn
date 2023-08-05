void main(List<String> args) {
  Car c1 = Car();
  
  print(c1.getName); // BMW
  c1.setName = 'volvo';
  print(c1.getName); // volvo
  print(c1.name); // volvo

  c1.setColor = 'red';
  print(c1.getColor);
}

// 类的setter 和 getter 
class Car {
  
  String name = 'BMW';
  String? color;

  // setter
  set setName(String name) {
    this.name = name;
  }
  // setter箭头函数简写
  set setColor(String color) => this.color = color;

  // getter
  String get getName {
    return name;
  }

  // getter 箭头函数简写
  String get getColor => color as String;

  
  
}