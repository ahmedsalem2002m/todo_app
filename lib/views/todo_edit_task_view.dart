import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/app_bar.dart';
import 'package:todo_app/views/widgets/button.dart';
import 'package:todo_app/views/widgets/text_field.dart';

class TodoEditTaskView extends StatelessWidget {
  const TodoEditTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  const Color(0xffffffff),
        child: const Column(
          children: [
            AppBarView( title: 'Edit Task',iconShow: true,),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  TextFieldView(hint: "Title",maxLines: 1,),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldView(hint: "Details",maxLines: 5,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(sign: "Update",width: 170,isWidth: true,),
                      CustomButton(sign: "Cancel",width: 170,isWidth: true,),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
