void main(List<String> args) {
  final s = Superman();
  s.running(); // Runner running
  s.flying();  // Flyer flying
  
  // s2
  final s2 = Superman2();
  s2.run(); // Runner run

  final s3 = Superman3();
  s3.run(); // superman run

}

// 定义runner接口
mixin Runner {
  running() {
    print('Runner running');
  }

  run() {
    print('Runner run');
  }
}

// 定义 flyer 接口
mixin Flyer {
  flying() {
    print('Flyer flying');
  }
}

class Animal {
  run() {
    print('animal run');
  }
}


// 定义 superman类 
class Superman with Runner, Flyer {

}

// 定义 superman2类 
class Superman2 extends Animal with Runner, Flyer {
  // 先集成后混入
  /**
   * 关于run 方法，可能混入的Runner类run方法覆盖了继承的Animal的run方法
   */

}

class Superman3 extends Animal with Runner {

  // 如果自身函数与父类和混入函数同名，优先用自身函数
  @override
  run() {
    // TODO: implement run
    print('superman run');
  }
}