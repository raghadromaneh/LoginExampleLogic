import 'package:flutter/material.dart';
import 'package:login/components/Buttonwidget.dart';
import 'package:login/components/ButtonAlert.dart';
import 'package:login/components/TextFieldInfo.dart';
import 'package:login/screens/forgetPassword.dart';
import 'package:login/screens/home.dart';
import 'package:login/screens/signup.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

List email = ["raghadromaneh@gmail.com", "maherromaneh@gmail.com"];
List password = ["raghad12345", "maher12345"];
final EmailController = TextEditingController();
final PasswordController = TextEditingController();
String? CurrentEmail;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //LOGO
              Image.asset("images/LOGO.png"),
              //Email
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 300),
                child: TextField(
                  controller: EmailController,
                  maxLines: 1,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: 'Please enter your email',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 90, 117, 128),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 90, 117, 128),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 90, 117, 128),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //passwordBox

              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 300),
                child: TextField(
                  controller: PasswordController,
                  obscureText: true,
                  maxLines: 1,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: 'Please enter your password',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 90, 117, 128),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 90, 117, 128),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 90, 117, 128),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              //login button
              ButtonWidget(
                ButtonTitle: "Login",
                OnPressing: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actions: [
                          Container(
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Please wait until we check your credentials",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ButtonAlertWidget(
                                      ButtonTitle: "Okay",
                                      OnPressing: () {
                                        for (int i = 0; i < email.length; i++) {
                                          if (EmailController.text ==
                                              email[i]) {
                                            CurrentEmail = email[i];
                                            if (PasswordController.text ==
                                                password[i]) {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                builder: (context) {
                                                  return Home();
                                                },
                                              ));
                                            } else {
                                              return showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    actions: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Your email or password is incorrect",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                          }
                                        }
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ButtonAlertWidget(
                                      ButtonTitle: "I don't want to wait",
                                      OnPressing: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return Login();
                                          },
                                        ));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              //Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) {
                            return SignUp();
                          }),
                        ),
                      );
                    },
                    child: Text(
                      " Sign up",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //Forget Password
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return ForgetPassword();
                      }),
                    ),
                  );
                },
                child: Text(
                  "Forget your password?",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
