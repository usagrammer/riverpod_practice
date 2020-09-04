import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list_state.freezed.dart';
part 'article_list_state.g.dart';

@freezed
abstract class ArticleListState with _$ArticleListState {
  factory ArticleListState({
    @Default([]) List articles,
  }) = _ArticleListState;

  factory ArticleListState.fromJson(Map<String, dynamic> json) =>
      _$ArticleListStateFromJson(json);
}
