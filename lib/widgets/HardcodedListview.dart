import 'package:flutter/material.dart';
import 'package:untitled/modal/subjectClass.dart';

class hardcoded extends StatelessWidget {

  List<subjects>subjectList;
  hardcoded(this.subjectList);


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
            leading: CircleAvatar(child: Text(subjectList[0].semster.toStringAsFixed(1)),),
            title: Text(subjectList[0].shortName),
            subtitle: Text(subjectList[0].longName),
            onTap: () {
              print(subjectList[0].shortName + ' is selected');
            }
        ),
        ListTile(
            leading: CircleAvatar(child: Text(subjectList[1].semster.toStringAsFixed(1)),),
            title: Text(subjectList[1].shortName),
            subtitle: Text(subjectList[1].longName),
            onTap: () {
              print(subjectList[1].shortName + ' is selected');
            }
          )
        ],
    );
  }
}
