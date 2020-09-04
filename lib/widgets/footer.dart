import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'footer_controller.dart';
import 'footer_state.dart';

final footerProvider = StateNotifierProvider((ref) => FooterController());

class Footer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final footer_controller = watch(footerProvider);
    final footer_state = watch(footerProvider.state);
    //    final footer_state = footer_controller.state;  これはだめ
    final currentIndex = footer_state.index;
    print('＜＜buildFooter..＞＞');
    print(currentIndex);
    return BottomNavigationBar(
        currentIndex: currentIndex,
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
