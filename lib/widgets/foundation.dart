import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import '../pages/article_page/index.dart';
import '../pages/article_page/new.dart';
import 'footer.dart';

class Foundation extends ConsumerWidget {
  var routes = [
    ArticlesIndex(),
    ArticlesNew(),
//    SettingsIndex(),
  ];

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    print('build_Myhome...');
    final footer_state = watch(footerProvider.state);
    final stack_index = footer_state.index;
    (() async {
      await watch(articlesProvider).getArticles();
    })();
    return Consumer(
      builder: (context, watch, child) {
        return Scaffold(
          resizeToAvoidBottomPadding: false,
          body: IndexedStack(
            index: stack_index,
            children: routes,
          ),
          appBar: AppBar(title: Text('Hogehoge'), actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
            ),
          ]),
          bottomNavigationBar: Footer(),
        );
      },
    );
  }
}
