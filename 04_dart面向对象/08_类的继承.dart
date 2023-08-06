class Animal {
  String? name;
  int age;
  Animal(this.name, this.age);
}

class Dog extends Animal {
  String species;
  Dog(super.name, super.age, {this.species = 'dog'});
  run() {
    print('dog running~');
  }
}

class Break extends Dog {
  String sex = 'female';
  Break(super.name, super.age, [this.sex = 'female']);

  bark() {
    print('woof~ woof~');
  }

  // 重写Dog run 方法
  @override
  run() {
    // TODO: implement run
    super.run(); // 子类调用父类的方法
    print('break running~');
  }
}

void main(List<String> args) {
  Dog d1 = Dog('mud', 5);
  print('${d1.species} - ${d1.name} - ${d1.age}');

  Break b = Break('break', 6);
  print('${b.species} - ${b.name} - ${b.age} - ${b.sex}');

  b..run()
   ..bark();
}
