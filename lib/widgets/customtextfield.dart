import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
    
  // In the Constructor onChanged and hint fields are added.
  const CustomTextField({required this.onChanged, this.hint}) ;
    
  // It requires the onChanged Function
  // and the hint to be Shown
  final ValueChanged onChanged;
  final String? hint;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
          
        // onChanged Function is used here.
        onChanged: onChanged, 
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            filled: true,
            fillColor: Colors.black12,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(18)),
            
            // hint String is used here.
            hintText: hint, 
            helperText: 'Keep it Short'),
      ),
    );
  }
}