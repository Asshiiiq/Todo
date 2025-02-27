import 'package:flutter/material.dart';
import 'package:todo/feature/authentication/view/pages/signin_page.dart';
import 'package:todo/feature/authentication/view/widgets/button_widget.dart';
import 'package:todo/feature/authentication/view/widgets/input_widget.dart';
import 'package:todo/feature/authentication/view/widgets/link_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  child: Icon(Icons.arrow_back),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Column(
              children: [
                TextFieldWidget(hintText: "Email"),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Enter the email address you used to create your account and we will email you a link to reset your password",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                CommonButtonWidget(),
                SizedBox(height: 30),
                BottomLinkWidget(
                  Navigat: SigninPage(),
                  Linktext: "Register",
                  text: "Don't have an account? ",
                ),
              ],
            ),
          ),

          
        ],
      ),
    );
  }
}
