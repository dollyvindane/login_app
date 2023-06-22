import 'package:flutter/material.dart';
import 'package:my_login_app/screens/home_screen.dart';
import 'package:my_login_app/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  String? email;
  String? password;

   LoginScreen({Key? key,this.email,this.password}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  validationCheck(){
if(widget.email == emailController.text ){

}else if(widget.password == passwordController.text)
    print("EMAIL::${widget.email}");
    print("PASS::${widget.password}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "Email"
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Password"
              ),
            ),
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  // if(emailController.text.isEmpty || passwordController.text.isEmpty){
                  //   Text( "Please fill all field");
                  // }
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                }, child: Text("SignUp")),
                ElevatedButton(onPressed: (){

                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  });

                }, child: Text("Login")),
              ],
            ),
          ],
        ),

    ),
    );
  }
}
