import 'package:flutter/material.dart';
import 'package:untitled/modal/subjectClass.dart';

class listView_Separated extends StatelessWidget {

  List <subjects> subject_List;
  Function removeItem;
  listView_Separated(this.subject_List, this.removeItem);


  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (ctx,i){
      return ListTile(
        leading:CircleAvatar(child:Text(subject_List[i].semster.toStringAsFixed(1)),),
        title: Text(subject_List[i].shortName),
        subtitle: Text(subject_List[i].longName),
        onTap: () {
          print(subject_List[i].shortName + 'is selected');
          },
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => removeItem(i),
          ),
        );
      },
      itemCount: subject_List.length,
      separatorBuilder: (ctx, i){
      return Divider(height: 3, color: Colors.blueGrey);
      },
    );
  }
}
