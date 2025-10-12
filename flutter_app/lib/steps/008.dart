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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int curr_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: curr_index == 0 ? Text("Home") : Text("user"),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "profile",
          )
        ],
        selectedIndex: curr_index,
        onDestinationSelected: (int value) {
            setState(() {
                curr_index = value;
            });
        },
      ),
    );
  }
}
