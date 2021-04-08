import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/my_provider.dart';

class Counter2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
           "${Provider.of<MyProvider>(context).counter}",
           style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
