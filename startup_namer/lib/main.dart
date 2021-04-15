// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// メイン関数　実行時に最初に呼ばれる
// runAppメソッドは引数のwidgetをスクリーンにアタッチする
// runAppメソッドの引数のWidgetが画面いっぱいに表示される
void main() => runApp(MyApp());

// runAppの引数として生成され、最初にインスタンス化されるクラス
class MyApp extends StatelessWidget {
  @override     // このメソッドでリターンしたWidgetがメイン画面になる
  Widget build(BuildContext context) {
    return MaterialApp(     // MaterialAppで画面のテーマ等を設定できる
        title: 'Startup Name Generator',
        home: RandomWords(),
    );
  }
}

// クラスの生成   ステートフルウィジェット(stful)
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState(); // アロー関数を用いて、Stateを呼ぶ
}

class _RandomWordsState extends State<RandomWords> {
  @override
  // 最初に起動するウィジェット
  Widget build(BuildContext context) {
    final _suggestions = <WordPair>[];  // リストを表示する
    final _biggerFont = TextStyle(fontSize: 18.0);  // フォントサイズの変更

    // 1行の中身を表示するウィジェット
    Widget _buildRow(WordPair pair) {
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    }

    // リストの一覧を表示するウィジェット
    Widget _buildSuggestions() {
      return ListView.builder(
          padding: EdgeInsets.all(16.0),  // パディングの変更
          itemBuilder: /*1*/ (context, i) {
            if (i.isOdd) return Divider(); /*2*/
            final index = i ~/ 2; /*3*/
            if (index >= _suggestions.length) {
              _suggestions.addAll(generateWordPairs().take(10)); /*4*/
            }
            return _buildRow(_suggestions[index]);
          });
    }

    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  } // build
}
