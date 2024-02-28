import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {

  String message;
  ProgressDialog({required this.message});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      child: Container(
        margin: EdgeInsets.all(15),
        width: double.infinity,
        decoration: 
        BoxDecoration(
          color: const Color.fromARGB(0, 255, 255, 255),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Padding(
          padding:  EdgeInsets.all(15.0),
          child: Row(
            children: [
              SizedBox(width: 6,),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),),
                SizedBox(width: 26,),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0
                  ),
                )
        
            ],
          ),
        ),
      ),
    );
  }
}