import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/my_provider.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<MyProvider>(
      
          create: (_)=> MyProvider(),
          child: CounterPro(),
        ),
    );
  }
}

class CounterPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
