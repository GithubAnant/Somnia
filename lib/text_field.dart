import 'package:flutter/material.dart';


class TextFieldSomnia extends StatelessWidget {
  const TextFieldSomnia({
    super.key, required this.controller,
  });
  
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      minLines: 1,
      maxLines: 13,
      keyboardType: TextInputType.text,
      
      style: TextStyle(
        fontSize: 11,
        fontFamily: 'Montserrat'
      ),
      
      decoration: InputDecoration(
        
        isDense: true,
        contentPadding: EdgeInsets.only(left: 15, right: 12, bottom: 20, top: 20),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 6),
          child: Icon(Icons.bedtime_outlined, color:  const Color.fromARGB(137, 158, 152, 152),),
        ),
        hintText: 'Write about year dreams here....(minimum 50 words)',
        hintStyle: TextStyle(
          color: const Color.fromARGB(175, 118, 115, 115)
        ),
        filled: true,
        fillColor: Colors.white,
    

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            color: Colors.black,
            width: 3,
            style: BorderStyle.solid,
          ),
        ),
    
    
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            color: Colors.black,
            width: 3,
            style: BorderStyle.solid,
          ),
        ),
    
    

    
      ),
    );
  }
}
