import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isMaritalStatus = false;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUP Scareen"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  hintText: "Full Name",
                ),
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: "Email"),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Date of Birth"),
                keyboardType: TextInputType.datetime,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
              ),
              TextField(
                controller: confirmPassController,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                ),
                obscureText: true,
              ),
              TextField(
                controller: salaryController,
                decoration: InputDecoration(hintText: "Salary"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(hintText: "Address"),
              ),
              Row(
                children: [
                  Text("Marital Status"),
                  Checkbox(
                      value: isMaritalStatus,
                      activeColor: Colors.green,
                      onChanged: (bool? val) {
                        setState((){
                          isMaritalStatus = val!;
                        });
               print("MARITAL::${isMaritalStatus}");
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (fullNameController.text.isEmpty ||
                            emailController.text.isEmpty ||
                            passwordController.text.isEmpty ||
                            confirmPassController.text.isEmpty ||
                            salaryController.text.isEmpty ||
                            addressController.text.isEmpty) {
                          SnackBar(
                            content: Text("please fill all fields"),
                          );
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        }
                      },
                      child: Text("Login")),
                  ElevatedButton(
                      onPressed: () {
                        if (fullNameController.text.isNotEmpty ||
                            emailController.text.isNotEmpty ||
                            passwordController.text.isNotEmpty ||
                            confirmPassController.text.isNotEmpty ||
                            salaryController.text.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen(
                                        fullName: fullNameController.text,
                                        email: emailController.text,
                                        address: addressController.text,
                                        salary: salaryController.text,
                                        date: dateController.text,
                                        maritalStatus: isMaritalStatus,
                                      )));
                        }
                        print("NAME:: ${fullNameController.text}");
                      },
                      child: Text("Submit")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
