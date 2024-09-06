import 'package:flutter/material.dart';

import '../../constant.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({super.key, required this.hint, this.maxLines=1, this.onSaved, this.onChanged});

  final String hint;
  final int maxLines;

  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        label: Text(hint),
          // hintText: hint,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder:buildBorder()
      ),
    );
  }

  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:  BorderSide(
          color: color ?? Colors.black,
        )
    );
  }
}
