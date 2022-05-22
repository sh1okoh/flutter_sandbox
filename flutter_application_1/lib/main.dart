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
        primarySwatch: Colors.green,
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
  List<String> titleList = ['Amazon', '楽天', 'Yahoo!', 'Google', 'Apple'];
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
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (BuildContext context, int i) {
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.vpn_key),
                title: Text(titleList[i])
              ),
              Divider(),
            ],
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleList.add('Google!!!!!');
          print(titleList);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// todo フローアクションボタンをタップ時に、リストを一つ追加表示
// todo 新しい画面を作成し、リストをタップしたときに遷移
// todo 新しい画面のレイアウトを作成
// todo 新しい画面にリストからデータを引き継ぐ
