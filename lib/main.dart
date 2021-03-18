import 'package:flutter/material.dart';
import 'package:flutter_app_provider/myprovider.dart';
import 'dashboard.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<MyProvider>(
          create: (_) => MyProvider(), child: CounterPro()),
    );
  }
}

// ignore: must_be_immutable
class CounterPro extends StatelessWidget {
  int n = 0;

  @override
  Widget build(BuildContext context) {
    print(" n= ${n++}");
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Provider.of<MyProvider>(context, listen: false).increment();
        },
      ),
    );
  }
}
