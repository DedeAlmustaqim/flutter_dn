import 'package:flutter/material.dart';

BuildContext get globalContext {
  return Get.currentContext;
}

class Get {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static get currentContext {
    return navigatorKey.currentState?.context;
  }

  static to(Widget page) async {
    return await navigatorKey.currentState!.push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static back() {
    if (Navigator.canPop(globalContext) == false) return;
    Navigator.pop(globalContext);
  }

  static offAll(page) {
    return navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false,
    );
  }

  static double get width {
    return MediaQuery.of(currentContext).size.width;
  }

  static double get height {
    return MediaQuery.of(currentContext).size.width;
  }

  static ValueNotifier<ThemeData> mainTheme =
      ValueNotifier<ThemeData>(ThemeData());
  static changeTheme(ThemeData theme) {
    mainTheme.value = theme;
  }

  static void put<T>(T instance) {
    final key = T.toString();
    _instance[key] = instance;
  }

  static final Map<String, dynamic> _instance = {};
  static T find<T>() {
    final key = T.toString();
    if (_instance.containsKey(key)) {
      return _instance[key] as T;
    } else {
      throw Exception("instance not found");
    }
  }

  static ThemeData get theme {
    return Theme.of(Get.currentContext);
  }
}
