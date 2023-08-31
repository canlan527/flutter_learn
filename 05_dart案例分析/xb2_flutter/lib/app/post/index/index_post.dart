import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/post/index/components/post_latest.dart';
import 'package:xb2_flutter/app/post/index/components/post_popular.dart';
import 'package:xb2_flutter/app/post/index/post_index_model.dart';

class PostIndex extends StatelessWidget {
  const PostIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostIndexModel(),
      child: TabBarView(
        children: [
          PostLatest(),
          PostPopular(),
        ],
      ),
    );
  }
}
