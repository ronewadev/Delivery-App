import 'package:delivery_app/pages/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  static String idScreen = 'forgotPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              "Get back to your account,"
              ,style: TextStyle(
                fontSize: 20
              ),
           ),
           
           
            Text(
              "Enter the email, a reset link will be sent to you"
              ,style: TextStyle(
                fontSize: 15
              ), 
            ),
            SizedBox(
            height: 8,
           ),
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  // Set border for enabled state (default)
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  // Set border for focused state
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  )
                  ),
                style: TextStyle(fontSize: 14.0),
              ),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){
                      //to put fuction here
                      //for email reset link sending and validation
                     displayToastMessage("Password reset link sent to your email.", context);
                 
                      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.idScreen, (route) => false);
                      
                    }, 
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                      fontWeight: FontWeight.bold
                      ),
                     )
                    ),
              
                     ElevatedButton(
                      
                      onPressed: (){
                      //to put fuction here
                       Navigator.pushNamedAndRemoveUntil(context, LoginScreen.idScreen, (route) => false);
                  
                    }, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 183, 225, 243)
                      ),
                    ),
                    child: Text(
                      "Cancel"
                    
                     )
                    )
                  ],
                ),
              )
              
         
          ],
        ),
      ),
    );
  }
}
displayToastMessage(String message, BuildContext context){
  Fluttertoast.showToast(msg: message);
}