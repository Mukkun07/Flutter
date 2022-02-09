import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import '../root.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム"),
        centerTitle: true,
        // 画面遷移時の戻るボタンを非表示にする
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text("ホーム画面")),
    );
  }
}
// Scaffold(
//   bottomNavigationBar: RootWidget(),
// ),