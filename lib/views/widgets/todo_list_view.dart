import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/todo_item.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key,  this.showIcon = true});

  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        padding:  EdgeInsets.zero,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 4
            ),
            child:TodoItem(showIcon: showIcon,)
          );
        }
    );
  }
}
