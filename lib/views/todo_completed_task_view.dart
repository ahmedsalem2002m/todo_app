import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/app_bar.dart';
import 'package:todo_app/views/widgets/todo_list_view.dart';

class TodoCompletedTaskView extends StatelessWidget {
  const TodoCompletedTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  const Color(0xffffffff),
        child: const Column(
          children: [
            AppBarView( title: 'Completed Task',iconShow: true,),
            Expanded(child: TodoListView(showIcon: false,)),
          ],
        ),
      ),
    );
  }
}
