import 'package:flutter/material.dart';
import 'package:untitled/modal/subjectClass.dart';

class ListviewBuilder extends StatelessWidget {

  List<subjects> subjectList;
  ListviewBuilder(this.subjectList);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (ctx, i){
      return ListTile(
        leading: CircleAvatar(child: Text(subjectList[i].semster.toStringAsFixed(1)),),
        title: Text(subjectList[i].shortName),
        subtitle: Text(subjectList[i].longName),
        onTap: () {
          print(subjectList[i].shortName + ' is selected');
          },
        );
      },
      itemCount: subjectList.length,
    );
  }
}
