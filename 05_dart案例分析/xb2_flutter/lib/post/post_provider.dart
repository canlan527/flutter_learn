import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';
import 'package:xb2_flutter/post/show/post_show_model.dart';

final postShowProvider =
    ChangeNotifierProvider(create: (context) => PostShowModel());

final postIndexProvider =
    ChangeNotifierProxyProvider<AppService, PostIndexModel>(
  create: (context) => PostIndexModel(appService: context.read<AppService>()),
  update: (context, appService, postIndexModel) {
    return PostIndexModel(
        appService: appService,
        posts: postIndexModel?.posts,
        layout: postIndexModel?.layout);
  },
);

// 导出的post业务相关的providers
final postProviders = [
  postShowProvider,
  postIndexProvider,
];
