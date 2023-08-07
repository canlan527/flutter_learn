void main(List<String> args) {
  
}

// flutter 中没有专门用于定义接口的关键字，类似ts的interface这种
// flutter 中，所有class 都默认为隐式接口

// 定义runner接口
class Runner {
  running() {
    print('Runner running');
  }

  run() {
    print('Runner run');
  }
}

// 定义 flyer 接口
class Flyer {
  flying() {
    print('Flyer flying');
  }
}

class Animal {
  run() {
    print('animal run');
  }
}


// 定义 superman类 实现 runner和flyer接口
class Superman extends Animal implements Runner, Flyer {
  // 重写Runner和Flay类里的所有方法
  @override
  running() {
    // TODO: implement running
    print('superman runnning~');
  }

  @override
  flying() {
    // TODO: implement flying
    print('superman flying');
  }

  /**
   * 关于run方法
   * 因为继承自Animal类，当前类会将Animal的run当做自己实现的run方法
   */

}