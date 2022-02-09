import 'package:flutter/material.dart';

class Visual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("お母さん設定"),
        // 画面遷移時の戻るボタンを非表示にする
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text("お母さん設定画面")),
    );
  }
}