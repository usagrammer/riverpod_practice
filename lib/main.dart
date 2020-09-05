import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/widgets/foundation.dart';
import 'package:state_notifier/state_notifier.dart';

//widgets//
import 'widgets/widgets.dart';

//pages//
import 'pages/article_page/index.dart';
import 'pages/article_page/new.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(home: Foundation()),
    ),
  );
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

class MyHome extends ConsumerWidget {
  var routes = [
    ArticlesIndex(),
//    ArticlesNew(),
//    SettingsIndex(),
  ];

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    print('build_Myhome...');

    return Consumer(
      builder: (context, watch, child) {
        return Scaffold(
          body: IndexedStack(
            index: 0,
            children: routes,
          ),
          appBar: AppBar(title: Text('Hogehoge'), actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
            ),
          ]),
          bottomNavigationBar: Footer(),
//          floatingActionButton: FloatingActionButton(
//            onPressed: () async {
//              await articles_controller.postArticle();
//              await articles_controller.getArticles();
//            },
//          ),
        );
      },
    );
  }
}
