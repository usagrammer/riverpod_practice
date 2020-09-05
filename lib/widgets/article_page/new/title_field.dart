import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:dio/dio.dart';

class TitleField extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'タイトル',
        hintText: 'hint',
      ),
      autovalidate: false, // 入力する度バリデーションチェック
      validator: (String value) {
        return value.isEmpty ? '入力必須' : null;
      },
      onSaved: (String value) {},
    );
  }
}
