import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'footer_state.dart';

class FooterController extends StateNotifier<FooterState> {
  FooterController() : super(FooterState()) {}

  void changeIndex(selectedIndex) {
    print('＜＜FooterChangeIndex...＞＞');
    print(selectedIndex);
    state = state.copyWith(index: selectedIndex);
  }
}
