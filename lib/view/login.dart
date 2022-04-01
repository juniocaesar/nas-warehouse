import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameFieldController = new TextEditingController();
  TextEditingController passwordFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login"),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset(
                  "img/logo_nas.png",
                  width: 250.0,
                ),
                Spacer(),
                TextField(
                  controller: usernameFieldController,
                  decoration: InputDecoration(
                      hintText: "Masukkan Username",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal))),
                ),
                TextField(
                  controller: passwordFieldController,
                  decoration: InputDecoration(
                      hintText: "Masukkan Password",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal))),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                Spacer(),
                ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Dashboard');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      textStyle: TextStyle(fontSize: 18)),
                ),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
