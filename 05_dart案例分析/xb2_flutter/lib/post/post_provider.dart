import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/post/create/post_create_modal.dart';
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

final postCreateProvider = ChangeNotifierProxyProvider<AppService, PostCreateModal>(
  create: (context) => PostCreateModal(appService: context.read<AppService>()), 
  update: (context, appService, postCreateModal) => PostCreateModal(appService: appService)
);

// 导出的post业务相关的providers
final postProviders = [
  postShowProvider,
  postIndexProvider,
  postCreateProvider,
];
