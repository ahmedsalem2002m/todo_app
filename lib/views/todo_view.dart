import 'package:flutter/material.dart';
import 'package:todo_app/views/todo_add_task_view.dart';
import 'package:todo_app/views/widgets/todo_view_body.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TodoAddTaskView()));
            // showModalBottomSheet(
            //     isScrollControlled: true,
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(12)
            //     ),
            //     context: context,
            //     builder: (context) {
            //       return const AddNotesBottomSheet();
            //     }
            //     );
          },
          backgroundColor: Color(0xff9395D3),
          child: const Icon(
              color: Colors.black,
              Icons.add
          )
      ),
      body: const TodoViewBody(),
    );
  }

  Widget _drawItem(){
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
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
            Row(
              children: [
                Icon(Icons.delete),
                SizedBox(
                  width:  10,
                ),
                Icon(Icons.edit),
                SizedBox(
                  width:  10,
                ),
                Icon(Icons.check),

              ],
            )
          ],
        ),
      ),
    );
  }
}