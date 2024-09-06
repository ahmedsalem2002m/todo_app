
import 'package:flutter/material.dart';
import 'package:todo_app/views/todo_completed_task_view.dart';

import '../todo_edit_task_view.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key,  this.showIcon = true});


  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8),
      // color: Colors.blue,
      elevation: 5,
      // margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    "Ali",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 200,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    "Mohamed",
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      // fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            if(showIcon)
            Row(
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset(
                    width: 30,
                    "assets/images/Trash.png"
                  ),
                ),
                SizedBox(
                  width:  10,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TodoEditTaskView()));
                  },
                  child: Image.asset(
                      width: 30,
                      "assets/images/Pencil.png"
                  ),
                ),
                SizedBox(
                  width:  10,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TodoCompletedTaskView()));
                  },
                  child: Image.asset(
                      width: 30,
                      "assets/images/CheckCircle.png"
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );;
  }
}
