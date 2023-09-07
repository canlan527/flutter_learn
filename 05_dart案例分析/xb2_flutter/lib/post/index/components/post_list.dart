import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/components/post_list_item.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';

class PostList extends StatefulWidget {
  final String? sort;

  PostList({this.sort});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<PostIndexModel>().getPosts(sort: widget.sort ?? 'latest')
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