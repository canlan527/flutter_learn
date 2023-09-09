import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/components/app_button.dart';
import 'package:xb2_flutter/app/components/app_text_field.dart';
import 'package:xb2_flutter/app/exceptions/app_exception.dart';
import 'package:xb2_flutter/app/exceptions/validate_exception.dart';
import 'package:xb2_flutter/post/create/post_create_model.dart';

class PostCreateForm extends StatefulWidget {
  @override
  _PostCreateFormState createState() => _PostCreateFormState();
}

class _PostCreateFormState extends State<PostCreateForm> {
  // 准备表单key
  final formKey = GlobalKey<FormState>();

  // 是否自动验证
  bool canValidate = true;

  // 文本编辑控制器
  final titleFieldController = TextEditingController();
  final contentFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // 获取modal
    final postCreateModel = context.watch<PostCreateModel>();

    // 标题字段
    final titleField = AppTextField(
      labelText: '标题',
      controller: titleFieldController,
      enabled: !postCreateModel.loading,
      canValidate: canValidate,
      onChanged: (value) {
        postCreateModel.setTitle(value);
      },
    );

    // 正文字段
    final contentFiled = AppTextField(
      labelText: '内容',
      controller: contentFieldController,
      enabled: !postCreateModel.loading,
      canValidate: canValidate,
      isMultiline: true,
      onChanged: (value) {
        postCreateModel.setContent(value);
      },
    );

    // 验证表单
    validate() {
      final isValid = formKey.currentState!.validate();
      if(!isValid) {
        throw ValidateException();
      }
    }

    // 重置表单
    reset() {
      setState(() {
        titleFieldController.text = '';
        contentFieldController.text = '';
        canValidate = false;
        postCreateModel.reset();
      });
    }

    // 提交方法
    submitCreatePost() async {
      try {
        // 验证
        validate();
        // 设置loading
        postCreateModel.setLoading(true);
        // 创建请求内容
        final postId = await postCreateModel.createPost();
        print(postId);
        // 成功提示
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('内容发布成功')),
        );
        // 重置
        reset();
      } on AppException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message)),
        );
      } finally {
        postCreateModel.setLoading(false);
      }
    }

    // 提交按钮
    final submitButton = AppButton(
      text: '发布',
      onPressed: postCreateModel.loading ? null : submitCreatePost,
    );

    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleField,
          contentFiled,
          submitButton,
        ],
      )
    );
  }
}
