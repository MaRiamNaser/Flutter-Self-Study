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
      home: MyHomePage(), 
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() { 
    print("Init state is called.");
    super.initState();
    
  }

  @override
  void didUpdateWidget( MyHomePage oldWidget) {
    print("didUpdateWidget is called.");
    super.didUpdateWidget(oldWidget);
  }

@override
  void dispose() {
    print("disposed is called.");
    super.dispose();
  }

int _counter = 0;
  @override
  Widget build(BuildContext context) {
    print("build is called!");
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_counter", 
            style:TextStyle(fontSize: 45),),

            const Text("Mariam"),// it is better to use const when this widget is not 
                                // change through the app.
           RaisedButton(
             child: Text("Go to another Screen."),

             onPressed: (){
               // try push also to know when dispose function is called. ^^
               Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx){

                      return Scaffold(
                        appBar:AppBar(title: Text("Another")),
                        body: null,
                      );
                  })
               );
             })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          setState(() {
            _counter++;
          });

          print("setState was called.");
        },
      ),
    );
  }
}
