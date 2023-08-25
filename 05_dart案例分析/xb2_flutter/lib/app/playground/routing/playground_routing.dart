import 'package:flutter/material.dart';
// import 'package:xb2_flutter/app/playground/layout/playground_layout.dart';
// import 'package:xb2_flutter/app/playground/routing/components/about.dart';

class PlaygroundRouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[50],
      padding: EdgeInsets.all(26),
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return About();
                  // }));
                  Navigator.pushNamed(context, '/about');
                },
                child: const Text(
                  '查看柯南介绍',
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return About();
                  // }));
                  Navigator.pushNamed(context, '/posts/6', arguments: {'user': 'xiaonan'});
                },
                child: const Text(
                  '查看路由参数',
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                //     return PlaygroundLayout();
                //   }));
                  Navigator.pushNamed(context, '/p_layout');
                },

                child: const Text(
                  '查看界面布局',
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
