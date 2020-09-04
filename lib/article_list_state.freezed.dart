// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'article_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ArticleListState _$ArticleListStateFromJson(Map<String, dynamic> json) {
  return _ArticleListState.fromJson(json);
}

class _$ArticleListStateTearOff {
  const _$ArticleListStateTearOff();

// ignore: unused_element
  _ArticleListState call({List<dynamic> articles = const []}) {
    return _ArticleListState(
      articles: articles,
    );
  }
}

// ignore: unused_element
const $ArticleListState = _$ArticleListStateTearOff();

mixin _$ArticleListState {
  List<dynamic> get articles;

  Map<String, dynamic> toJson();
  $ArticleListStateCopyWith<ArticleListState> get copyWith;
}

abstract class $ArticleListStateCopyWith<$Res> {
  factory $ArticleListStateCopyWith(
          ArticleListState value, $Res Function(ArticleListState) then) =
      _$ArticleListStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> articles});
}

class _$ArticleListStateCopyWithImpl<$Res>
    implements $ArticleListStateCopyWith<$Res> {
  _$ArticleListStateCopyWithImpl(this._value, this._then);

  final ArticleListState _value;
  // ignore: unused_field
  final $Res Function(ArticleListState) _then;

  @override
  $Res call({
    Object articles = freezed,
  }) {
    return _then(_value.copyWith(
      articles:
          articles == freezed ? _value.articles : articles as List<dynamic>,
    ));
  }
}

abstract class _$ArticleListStateCopyWith<$Res>
    implements $ArticleListStateCopyWith<$Res> {
  factory _$ArticleListStateCopyWith(
          _ArticleListState value, $Res Function(_ArticleListState) then) =
      __$ArticleListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> articles});
}

class __$ArticleListStateCopyWithImpl<$Res>
    extends _$ArticleListStateCopyWithImpl<$Res>
    implements _$ArticleListStateCopyWith<$Res> {
  __$ArticleListStateCopyWithImpl(
      _ArticleListState _value, $Res Function(_ArticleListState) _then)
      : super(_value, (v) => _then(v as _ArticleListState));

  @override
  _ArticleListState get _value => super._value as _ArticleListState;

  @override
  $Res call({
    Object articles = freezed,
  }) {
    return _then(_ArticleListState(
      articles:
          articles == freezed ? _value.articles : articles as List<dynamic>,
    ));
  }
}

@JsonSerializable()
class _$_ArticleListState
    with DiagnosticableTreeMixin
    implements _ArticleListState {
  _$_ArticleListState({this.articles = const []}) : assert(articles != null);

  factory _$_ArticleListState.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticleListStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<dynamic> articles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticleListState(articles: $articles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArticleListState'))
      ..add(DiagnosticsProperty('articles', articles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleListState &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(articles);

  @override
  _$ArticleListStateCopyWith<_ArticleListState> get copyWith =>
      __$ArticleListStateCopyWithImpl<_ArticleListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticleListStateToJson(this);
  }
}

abstract class _ArticleListState implements ArticleListState {
  factory _ArticleListState({List<dynamic> articles}) = _$_ArticleListState;

  factory _ArticleListState.fromJson(Map<String, dynamic> json) =
      _$_ArticleListState.fromJson;

  @override
  List<dynamic> get articles;
  @override
  _$ArticleListStateCopyWith<_ArticleListState> get copyWith;
}
