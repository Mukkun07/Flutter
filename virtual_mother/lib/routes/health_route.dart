import 'package:flutter/material.dart';

class Health extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("健康管理"),
        // 画面遷移時の戻るボタンを非表示にする
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text("健康管理画面")),
    );
  }
}