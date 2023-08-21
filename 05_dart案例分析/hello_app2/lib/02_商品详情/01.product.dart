import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品列表'),
      ),
      body: const HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        HomeProductItem(
          title: 'Macbook',
          desc: 'The most affordable Mac laptop to get things done on the go.',
          imgUrl:
              'https://www.apple.com/v/macbook-air/q/images/overview/compare/compare_mba_m1__dsgh2hoxlkae_large_2x.png',
        ),
        HomeProductItem(
            title: 'Macbook Air',
            desc: 'The ultimate iPhone',
            imgUrl:
                'https://www.apple.com/v/macbook-pro/ah/images/overview/hero_13__d1tfa5zby7e6_large_2x.jpg'),
        HomeProductItem(
          title: 'MacBook Pro',
          desc:
              'The ultimate iPad experience with the most advanced technology.',
          imgUrl:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-spacegray-select-202301?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1671304673229',
        ),
      ],
    );
  }
}

class HomeProductItem extends StatelessWidget {
  const HomeProductItem(
      {super.key,
      required this.title,
      required this.desc,
      required this.imgUrl});
  final String title;
  final String desc;
  final String imgUrl;

  // HomeProductItem(this.title, this.desc, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    // 抽离样式
    const titleStyle = TextStyle(fontSize: 25, color: Colors.black87);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black26),
      ),
        child: Column(
      children: <Widget>[
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: titleStyle,
        ),
        // 间距
        const SizedBox(
          height: 8,
        ),
        Image.network(imgUrl),
        const SizedBox(
          height: 8,
        ),
        Text(desc, textAlign: TextAlign.center,),
      ],
    ));
  }
}
