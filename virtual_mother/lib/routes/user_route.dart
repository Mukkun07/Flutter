import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("マイページ"),
        // 画面遷移時の戻るボタンを非表示にする
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text("マイページ画面")),
    );
  }
}
