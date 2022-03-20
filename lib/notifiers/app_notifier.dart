import 'dart:async';
import 'package:flutter/foundation.dart';

enum NavBarItem {home}
class AppNotifier extends ChangeNotifier {
  final StreamController<NavBarItem> navBarController = StreamController<NavBarItem>.broadcast();

  NavBarItem defaultItemNavBar = NavBarItem.home;
  Stream<NavBarItem> get itemNavBarStream => navBarController.stream;

  set setNavBarIndex(int index) {
    switch (index) {
      case 0:
        navBarController.sink.add(NavBarItem.home);
        notifyListeners();
        break;
    }

  }
}
