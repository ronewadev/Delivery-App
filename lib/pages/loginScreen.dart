
import 'package:delivery_app/AllWidgets/progressDialog.dart';
import 'package:delivery_app/pages/forgotPassword.dart';
import 'package:delivery_app/pages/mainScreen.dart';
import 'package:delivery_app/pages/registrationScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginScreen extends StatelessWidget {
  
  //nevigations
  static const String idScreen = "login";

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          children: [
            SizedBox(height: 35.0,),
            Image(image: AssetImage("images/logo.png"),
            width: 350,
            height: 150,
            alignment:Alignment.center ,),
            SizedBox(height: 1.0,),
            Text(
              "Login to PickUp",
              style: TextStyle(fontSize: 24.0, fontFamily: "Brand Bold"),
              textAlign: TextAlign.center,
              selectionColor: Colors.blue,
            ),
       
       
          Padding(padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
            
           SizedBox(height: 5,),
            TextFormField(
              controller: emailTextEditingController,
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
       
            //password field
             SizedBox(height: 10,),
            TextFormField(
              controller: passwordTextEditingController,
             obscureText: true,
             decoration: InputDecoration(
                labelText: 'Password',
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
            //
            //
            //
            SizedBox(height: 15.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    
                    onPressed: (){
                    /*
                      if(!emailTextEditingController.text.contains("@" ) 
                              && !emailTextEditingController.text.contains("." )){
                            displayToastMessage("Enter a valid email address.", context);
                      }
                      else if(emailTextEditingController.text.isEmpty){
                            displayToastMessage("Please enter email.", context);
                      }
                      else if(passwordTextEditingController.text.isEmpty){
                            displayToastMessage("Please enter password.", context);
                      }
                      else{
                        Navigato.pop(context);
                        displayToastMessage("User does not exist, please register.", context);
                     
                      }
                      */ 
                    showDialog(context: context, 
                    builder: (BuildContext context){
                      return ProgressDialog(message: "Validating, Please wait...");
                    }
                    );
                    Navigator.pushNamedAndRemoveUntil(context, MainScreen.idScreen, (route) => false);
            
                    }, 
                    child: Container(
                      child: Text("Login",
                      style: TextStyle(fontSize: 18.0,
                      fontFamily: "Brand Bold"),),
                    ),
                    
                    ),
                
                TextButton(onPressed: (){
               //  Navigator.pushNamedAndRemoveUntil(context , ForgotPasswordScreen.idScreen, (route) => false);
                   Navigator.pushNamedAndRemoveUntil(context, ForgotPasswordScreen.idScreen, (route) => false);
                }, 
                child: Text("Forgot password"))
                ],
              ),
            ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:15, vertical: 10),
                 child: Row(
                             
                       //mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                  Text("Do not have an account?"),
                  TextButton(onPressed: (){
                    
                    Navigator.pushNamedAndRemoveUntil(context , RegistrationScreen.idScreen, (route) => false);
                  }, child: Text("Register Here"))
                             ],
                            ),
               ),
           
            ],
            ),
          ),
        
          ],
             ),
       ),
    );
  } 
}
displayToastMessage(String message, BuildContext context){
  Fluttertoast.showToast(msg: message);
}