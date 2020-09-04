import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'footer_controller.dart';
import 'footer_state.dart';

class Footer extends ConsumerWidget {
  final footer_controller;
  final footer_state;
  const Footer(this.footer_controller, this.footer_state);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    print('＜＜buildFooter..＞＞');
//    final footerController = watch(footerProvider);
    final currentIndex = footer_state;
    print(currentIndex);
    return BottomNavigationBar(
        currentIndex: currentIndex.index,
        onTap: (index) => footer_controller.changeIndex(index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("index")),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_add), title: Text("new")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("setting")),
        ]);
  }
}
