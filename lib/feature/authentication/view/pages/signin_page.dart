import 'package:flutter/material.dart';
import 'package:todo/feature/authentication/view/widgets/button_widget.dart';
import 'package:todo/feature/authentication/view/widgets/input_widget.dart';
import 'package:todo/feature/authentication/view/widgets/link_widget.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Text("Create an Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 35,right: 35),
            child: Column(
              children: [
            TextFieldWidget(hintText: "Full Name"),
            SizedBox(height: 15,),
            TextFieldWidget(hintText: "Email"),
            SizedBox(height: 15,),
            TextFieldWidget(hintText: "Password"),
            SizedBox(height: 15,),
            TextFieldWidget(hintText: "Confirm Password"),
            SizedBox(height: 35,),
            CommonButtonWidget(),
            SizedBox(height: 40,),
            BottomLinkWidget(Linktext: "Log In", 
            
            text: "Already have an account? ",
            ),
            
              ],
            ),
          )
          
        ],
      ),
    );
  }
}