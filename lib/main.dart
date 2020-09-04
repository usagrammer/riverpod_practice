import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:dio/dio.dart';

import 'package:riverpod_practice/article_list_state.dart';

//widgets//
import 'widgets/widgets.dart';
import 'widgets/footer_controller.dart';

final articlesProvider = StateNotifierProvider((ref) => ArticleList());
final footerProvider = StateNotifierProvider((ref) => FooterController());

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    (() async {
      await watch(articlesProvider).getArticles();
    })();
    return MaterialApp(home: MyHome());
  }
}

class ArticleList extends StateNotifier<ArticleListState> {
  List articles = [];
  bool _isLoading = false;

  ArticleList() : super(ArticleListState()) {}

  void setArticles(new_articles) {
    print('＜＜setArticles...＞＞');
    state = state.copyWith(articles: new_articles);
    print(state.articles.length);
  }

  Future<List> getArticles() async {
    final url = "http://192.168.1.16:3000/articles";

    try {
      Response response = await Dio().get(
        url,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": " Bearer hogehoge",
          },
        ),
      );
      print(response);
      setArticles(response.data);
    } catch (e) {
      print(e);
    }
  }

  void postArticle() async {
    final url = "http://192.168.1.16:3000/articles";
    final dio = new Dio();

    var payload = {
      "article": {
        "title": "タイトル",
        "content": "内容",
      }
    };
    var data = await dio
        .post(
      url,
      data: new FormData.fromMap(payload),
      options: Options(
        headers: {},
      ),
    )
        .then((response) {
      return response.data;
    }).catchError((err) {
      print(err);
      print(err.message);
      return null;
    });
  }
}

class MyHome extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    print('build_Myhome...');
    final articles_controller = watch(articlesProvider);
    final articles = watch(articlesProvider.state);
    final footer_controller = watch(footerProvider);
//    final footer_state = footer_controller.state;  これはだめ
    final footer_state = watch(footerProvider.state);
    return Consumer(
      builder: (context, watch, child) {
        dynamic article_list = articles.articles;
        return Scaffold(
          body: Center(
            child: ArticleListView(article_list),
          ),
          appBar: AppBar(title: Text('Hogehoge'), actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
            ),
          ]),
          bottomNavigationBar: Footer(footer_controller, footer_state),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await articles_controller.postArticle();
              await articles_controller.getArticles();
            },
          ),
        );
      },
    );
  }
}

class ArticleListView extends ConsumerWidget {
  final articles;
  ArticleListView(this.articles);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
//    final articles = watch(articlesProvider).state;
    print('<<build_ListView...>>');
    print(articles);
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("${articles[index]['title']}${index}"),
        );
      },
    );
  }
}
