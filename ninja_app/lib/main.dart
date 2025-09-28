import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my first app"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      //   body: Container(
      //     color: Colors.grey[400],
      //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      //     margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      //     // padding: EdgeInsets.all(10),
      //     // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      //     child: Text("Hello"),
      //   ),
      body: Align(
        alignment: Alignment.topLeft, // or centerLeft, topCenter, etc.
        child: Row(
          mainAxisSize: MainAxisSize.min, // makes Row wrap its content
          children: <Widget>[
            Text("hello"),
            TextButton(onPressed: () {}, child: Text("clique")),
            Container(color: Colors.cyan, padding: EdgeInsets.all(12)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("clique me"),
        backgroundColor: Colors.red[600],
        onPressed: () => {},
      ),
    );
  }
}
