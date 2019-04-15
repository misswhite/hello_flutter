import 'package:flutter/material.dart';
//import './app_screens/home.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Exploring List view',
      home: Scaffold(

        appBar: AppBar(
          title: Text("Long List View")
        ), // AppBar

        body: getListView(),
      ), // Scaffold
    ), // MaterialApp
  ); //runApp
} // Main

List<String> getListElements() {

  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {

  var listItems = getListElements();

  var listView = ListView.builder(
    itemBuilder: (context, index) {

      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          debugPrint('${listItems[index]} was tapped');
        },
      ); // ListTile
    }
  );

  return listView;
} // getListView
