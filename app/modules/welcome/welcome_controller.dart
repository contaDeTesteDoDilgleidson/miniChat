import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final scroll = ScrollController();
  RxList listComments = [].obs;
  TextEditingController msg = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void todoList() {
    if (msg.text.isNotEmpty) {
      var msgs = {"msg": msg.text};
      listComments.add(msgs);
      Timer(
        Duration(milliseconds: 10),
        () {
          scroll.animateTo(
            0.0,
            //scroll.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
          );
        },
      );
      msg.clear();
      print(listComments);
    }
  }

  void removeList() => listComments.clear();
}
