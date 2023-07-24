void main(List<String> args) {
  // 1. 列表List
   var names = ['coder', 'why', 'yyds', 'why'];
   names.add('a new item');

  // 2. Set集合
  var movies = {'星际穿越', '大话西游', '盗梦空间'}; 

  // 3. Map映射
  var info = {
    'name': 'why',
    'age': 18,
    'height': 1.88,
  };

  // 给names去重
  // 思路： 转Set 再转List
  names = Set<String>.from(names).toList();
  print(names);


}