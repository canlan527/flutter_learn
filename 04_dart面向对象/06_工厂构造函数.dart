void main(List<String> args) {
  Product product1 = Product.create(1);
  Product product2 = Product.create(1);

  print(identical(product1, product2));
  
  Person p1 = Person.withName('coder');
  Person p2 = Person.withName('coder');

  Person c1 = Person.withColor('yellow');
  Person c2 = Person.withColor('yellow');
  Person c3 = Person.withColor('white');

  print(p1.name); // coder
  print(identical(p1, p2)); // true

  print(c1.color); // yellow
  print(identical(c1, c2)); // true
  print(identical(c1, c3)); // false
}
/**
 * 普通的构造函数会默认返回构造出来的对象，
 * 工厂构造函数需要手动返回一个对象
 */

class Person {
  String? name;
  String? color;

  Person({this.color, this.name});

  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _colorCache = {};

  // 工厂构造函数
  factory Person.withName(String name) {
    if(_nameCache.containsKey(name)) {
      return _nameCache[name] as Person;
    } else {
      final p = Person(name: name);
      _nameCache[name] = p;
      return p;
    }
  }

  factory Person.withColor(String color) {
    if(_colorCache.containsKey(color)) {
      return _colorCache[color] as Person;
    } else {
      final c = Person(color: color);
      _colorCache[color] = c;
      return c;
    }
  }
}

// class Product {
//   /// 工厂构造函数（修饰 create 构造函数）
//   factory Product.createFactory(int type) {
//     if (type == 1) {
//       return Product._concrete1();
//     } else if (type == 2) {
//       return Product._concrete2();
//     }
//     return Product._concrete();
//   }

//   // 命名构造函数
//   Product._concrete() : name = 'concrete';

//   // 命名构造函数1
//   Product._concrete1() : name = 'concrete1';

//   // 命名构造函数2
//   Product._concrete2() : name = 'concrete2';

//   String name;
// }

// 单例模式
class Product {
  String? name;
  /// 工厂构造函数
  factory Product.create(int type) {
    if (type == 1) {
      return product1;
    } else if (type == 2) {
      return product2;
    }
    return Product._concrete();
  }

  static final Product product1 = Product._concrete1();
  static final Product product2 = Product._concrete2();

  /// 命名构造函数
  Product._concrete() : name = 'concrete';

  /// 命名构造函数1
  Product._concrete1() : name = 'concrete1';

  /// 命名构造函数2
  Product._concrete2() : name = 'concrete2';
}
