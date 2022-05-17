import 'package:flutter/material.dart';
import 'package:untitled/modal/subjectClass.dart';
import 'package:untitled/widgets/HardcodedListview.dart';
import 'package:untitled/widgets/listview_builder.dart';

import 'widgets/listview_separated.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List <subjects> subjectList = [
    subjects(shortName: 'CDEV', longName: 'Coding development projects', semster: 1.2),
    subjects(shortName: 'DAVA', longName: 'Data development and Analytics', semster: 1.1),
    subjects(shortName: 'COMT', longName: 'Computation Thinking', semster: 1.1)
  ];

  void removeItem(i){
    print('Removing ' + subjectList[i].shortName);
    setState(() {
      subjectList.removeAt(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List_View_tryouts'),
      ),
      body: listView_Separated(subjectList, removeItem )
    );
  }
}
