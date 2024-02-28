import 'package:delivery_app/AllWidgets/progressDialog.dart';
import 'package:delivery_app/pages/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class RegistrationScreen extends StatelessWidget {
  
  static const String idScreen = "register";

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
             Center(
               child: Image(image: AssetImage("images/logo.png"),
                width: 150,
                height: 150,
                alignment:Alignment.center ,),
             ),
              SizedBox(height: 1.0,),
              Text(
                "Welcome to PickUp",
                style: TextStyle(fontSize: 24.0, fontFamily: "Brand Bold"),
                textAlign: TextAlign.center,
                selectionColor: Colors.blue,
              ),
      
              //for user names
                 SizedBox(height: 8,),
              TextFormField(
                controller: nameTextEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                labelText: 'Names',
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
      
              ///user email
              SizedBox(height: 8,),
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
         
         //User mobile numbers 
         SizedBox(height: 8,),
              TextFormField(
                controller: phoneTextEditingController,
                keyboardType: TextInputType.phone,
               decoration: InputDecoration(
                labelText: 'Mobile numbers',
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
               SizedBox(height: 8,),
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

              ///////
              ///
              ///////
              ///
              ///////
      
      Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){
              if(nameTextEditingController.text.isEmpty && 
                 emailTextEditingController.text.isEmpty &&
                 phoneTextEditingController.text.isEmpty &&
                 passwordTextEditingController.text.isEmpty
                 ){
                        displayToastMessage("Please fill in your details", context);
              }
              else if(nameTextEditingController.text.length < 3){
                         displayToastMessage("Name too short", context);
                    }
                    else if(!emailTextEditingController.text.contains("@" ) 
                            && !emailTextEditingController.text.contains("." )){
                          displayToastMessage("Enter a valid email address", context);
                    }
                    else if(phoneTextEditingController.text.isEmpty){
                          displayToastMessage("Please enter phone number", context);
                    }

                    else if(phoneTextEditingController.text.length < 10 || 
                            phoneTextEditingController.text.length >13){
                          displayToastMessage("Phone number too short", context);
                    }
                    else if(emailTextEditingController.text.isEmpty){
                          displayToastMessage("Please enter an email address.", context);
                    }
                    else if(passwordTextEditingController.text.length < 6){
                          displayToastMessage("Password must be atleast 6 characters", context);
                    }
                    else{
                      // registerNewUser(context);
                      
                 showDialog(context: context, 
                    builder: (BuildContext context){
                      return ProgressDialog(message: "Creating account, Please wait...");
                    });

                    }
      
            }, 
            child: Container(
                      child: Text("Create Account",
                      style: TextStyle(fontSize: 15.0,
                      fontFamily: "Brand Bold"),),
                    ),)
          ],
        ),
      ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Already have an account?"),
              TextButton(onPressed: (){
                   Navigator.pushNamedAndRemoveUntil(context , LoginScreen.idScreen, (route) => false);      
              }, 
              child: Container(
                child: Text("Login"),
              ))
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