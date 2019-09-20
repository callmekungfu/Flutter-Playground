import 'package:flutter/material.dart';
import 'package:flutter_playground/tabs/first.dart';
import 'package:flutter_playground/tabs/second.dart';
import 'package:flutter_playground/tabs/third.dart';

void main() {
  runApp(MaterialApp(
    title: "Using Tabs",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Bottom Navigation bar"),
        backgroundColor: Colors.teal,
      ),
      body: TabBarView(
        children: <Widget>[FirstTab(), SecondTab(), ThirdTab()],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.teal,
        child: TabBar(
          tabs: <Tab> [
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.file_upload),
            ),
            Tab(
              icon: Icon(Icons.featured_video),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}