import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/app_bar.dart';
import 'package:todo_app/views/widgets/todo_list_view.dart';

class TodoViewBody extends StatelessWidget {
  const TodoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  const Color(0xffffffff),
      child: const Column(
        children: [
          AppBarView( title: 'TODO APP',iconShow: false,),
          Expanded(
              child: TodoListView()
          ),
        ],
      ),
    );
  }
}
