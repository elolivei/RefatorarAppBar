import 'package:flutter/material.dart';
import 'MyTabBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //controller for TabBar
        length: 3, //lenght of tabs in TabBar
        child: MaterialApp(
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Title of App"), //title of app
        backgroundColor: const Color.fromARGB(255, 82, 117, 255), //background color of app bar
        elevation: 5.0, //elevation value of appbar
        bottom: MyTabBar(),
        actions: [
          //actions widget in appbar
          IconButton(
              icon: Icon(Icons.camera),
              onPressed: () {
                //code to execute when this button is pressed
              }),

          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                //code to execute when this button is pressed
              }),
          //more widgets to place here
        ],
        
      ),
      drawer: Drawer(), //drawer on scaffold, it will create menu icon on appbar

      body: TabBarView(
        children: <Widget>[
          Center(
            child: Text("Selecionado Voar"),
          ),
          Center(
            child: Text("Selecionado Viajar"),
          ),
          Center(
            child: Text("Selecionado Explorar"),
          ),
        ],
      ),
    );
  }
}
