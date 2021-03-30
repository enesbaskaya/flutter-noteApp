import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTG Notes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BTG Notes'),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){

      }),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, index) {
          return Container(
            height: 150,
            margin: EdgeInsets.all(10),
            color: Colors.red,
          );
        },
      ),
    );
  }
}
