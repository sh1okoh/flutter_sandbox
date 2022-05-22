import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('パスワードポスト'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('Amazon'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('楽天')
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('Yahoo!')
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// todo リスト間に区切り線を表示
// todo リスト表示を同的に
// todo フローアクションボタンをタップ時に、リストを一つ追加表示
// todo 新しい画面を作成し、リストをタップしたときに遷移
// todo 新しい画面のレイアウトを作成
// todo 新しい画面にリストからデータを引き継ぐ
