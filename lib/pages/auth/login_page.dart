import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80 ),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Groupie",
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text("Login now to know what they are talking!",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Image.asset("assets/login.png")

              ],
            ),
          ),
        ),
      ),
    );
  }
}
