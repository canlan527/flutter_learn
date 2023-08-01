void main(List<String> args) {
  shopCart sc = shopCart.withCode(name: '张三', code: 'sc-10000');
  sc.bookings = [Item('苹果', 10.0), Item('鸭梨', 20.0)];
  print(sc.getInfo());

  shopCart sc2 = shopCart(name: '李四');
  sc2.bookings = [Item('香蕉', 15.0), Item('西瓜', 40.0)];
  print(sc2.getInfo());
}

// 基类 Meta，用于存放 price 属性与 name 属性。
class Meta {
  double price;
  String name;
  Meta(this.name, this.price);
}

// 定义商品Item类
class Item extends Meta {
  Item(name, price) : super(name, price);
}

// 定义购物车类
class shopCart extends Meta {
  DateTime date = DateTime.now();
  String code = '';
  List<Item> bookings = [];

  // 类的构造函数
  // shopCart(name, this.code): date = DateTime.now(), super(name, 0);

  // 类似重载 withcode
  shopCart({name}) : this.withCode(name: name, code: '');
  shopCart.withCode({name, this.code = ''})
      : date = DateTime.now(),
        super(name, 0);

  double get price {
    double sum = 0.0;
    for (var i in bookings) {
      sum += i.price;
    }
    return sum;
  }

  getInfo() {
    return ''' 购物车信息：
    ----------------------
    用户名：$name,
    优惠码：${code == '' ? '没有' : code},
    总价： $price,
    日期：$date
    ----------------------
    ''';
  }
}
