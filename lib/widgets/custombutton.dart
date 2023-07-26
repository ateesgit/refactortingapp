import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
    
  // In the Constructor onTap and Symbol fields are added.
  const CustomButton({ required this.onTap, required this.symbol});
    
  // It Requires 2 fields Symbol(to be displayed)
  // and onTap Function
  final String symbol;
  final VoidCallback onTap;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        
      // The onTap Field is used here.
      onTap: onTap, 
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueGrey,
        ),
        child: Center(
          child: Text(
              
            // The Symbol is used here
            symbol, 
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}