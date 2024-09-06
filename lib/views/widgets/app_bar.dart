import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/icon_view.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key, required this.title,  this.icon = Icons.arrow_back, required this.iconShow});


   final String title;
  final IconData icon;
  final bool iconShow;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Color(0xff9395D3),
      child: Row(
        children: [
          SizedBox(width: 10,),
          if(iconShow)
            IconView(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: icon,
            ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 30,

            ),
          ),

        ],
      ),
    );
  }
}
