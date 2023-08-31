import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/post/index/components/post_list_item.dart';
import 'package:xb2_flutter/app/post/index/post_index_model.dart';

class PostList extends StatefulWidget {
  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<PostIndexModel>().getPosts()
    );
  }

  @override
  Widget build(BuildContext context) {
    // 获取 PostIndexModel类
    final model = context.watch<PostIndexModel>();
    // 获取post
    final posts = model.posts ?? [];
    // 构建暂无内容
    final noContent = Center(
      child: Container(child: Text('暂无内容')),
    );
    // 发送请求
    // final response = model.getPosts();
    // model.posts!.forEach((item) {
    //   print(item.toJson());
    // });

    // 构建列表视图
    final listContent = ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostListItem(item: posts[index]);
      }
    );

    return posts.length == 0 ? noContent : listContent;
  }
}