import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:dio/dio.dart';

import 'package:riverpod_practice/models/entities/article.dart';

import 'title_field.dart';
import 'content_field.dart';

final _formkey = GlobalKey<FormState>();

class ArticleForm extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    print('build_ArticleForm...');
    return Form(
      key: _formkey,
      child: Container(
          child: Column(
        children: <Widget>[
          ContentField(),
          TitleField(),
          RaisedButton(
            onPressed: () {},
            child: Text('save'),
          ),
        ],
      )),
    );
  }
}
