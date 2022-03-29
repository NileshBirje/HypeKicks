// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/registrationpage.dart';
import 'package:hypekicks_snkrs/screens/home/home_screen.dart';

class LoginPageNew extends StatefulWidget {
  const LoginPageNew({Key? key}) : super(key: key);

  @override
  _LoginPageNewState createState() => _LoginPageNewState();
}

class _LoginPageNewState extends State<LoginPageNew> {
  final SizedBox sb = SizedBox(
    height: 20,
  );
  //form key
  final _formkey = GlobalKey<FormState>();
  //editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswdController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //emailField
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+. [a-z]")
            .hasMatch(value)) {
          return ("Please Enter Your Email");
        }
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          hintText: "enter valid email-id",
          fillColor: Color.fromARGB(255, 100, 100, 100),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
          labelText: 'Email:'),
    );
    //passwordField
    final pswdField = TextFormField(
      autofocus: false,
      controller: pswdController,
      // validator: (){},
      onSaved: (value) {
        pswdController.text = value!;
      },
      textInputAction: TextInputAction.done,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        fillColor: Color.fromARGB(255, 100, 100, 100),
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
        labelText: 'Password:',
      ),
    );
    final loginButton = Material(
      borderRadius: BorderRadius.circular(13),
      elevation: 5,
      color: Colors.blue,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Text('Login',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _showPopupMenu(context);
            }),
        title: Text(
          "HypeKicks",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 0, bottom: 0),
              child: Form(
                  key: _formkey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 200,
                          child: Image.asset(
                            'assets/images/unc.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        sb,
                        emailField,
                        sb,
                        pswdField,
                        sb,
                        loginButton,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text('Forgot Password?',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationScreen()));
                              },
                              child: Text(
                                "New User?",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ])),
            )),
      )),
    );
  }
}

void _showPopupMenu(BuildContext context) async {
  await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(0, 80, 100, 100),
      items: [
        PopupMenuItem(child: Text("My orders")),
        PopupMenuItem(child: Text("My orders")),
      ],
      elevation: 8.0);
}
