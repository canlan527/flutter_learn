import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/post/index/post_index_model.dart';
import 'package:xb2_flutter/app/post/show/post_show_model.dart';

final postShowProvider =
    ChangeNotifierProvider(create: (context) => PostShowModel());

final postIndexProvider =
    ChangeNotifierProvider(create: (_) => PostIndexModel());

// 导出的post业务相关的providers
final postProviders = [
  postShowProvider,
  postIndexProvider,
];
