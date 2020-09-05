import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:dio/dio.dart';

class ContentField extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return TextFormField();
  }
}
