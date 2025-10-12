import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String title = "app";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
        brightness: Brightness.dark,
      )),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
             
              ListTile(
                title: Text("Logout"),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "home",
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "user",
            )
          ],
          selectedIndex: 0,
          onDestinationSelected: (int value) {},
        ),
      ),
    );
  }
}
