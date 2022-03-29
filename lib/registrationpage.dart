// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //form key
  final _formkey = GlobalKey<FormState>();
  //editing controller
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController secondnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswdController = TextEditingController();
  final TextEditingController confirmpswdController = TextEditingController();

  final SizedBox sb = SizedBox(
    height: 20,
  );
  @override
  Widget build(BuildContext context) {
    //firstnameField
    final firstnameField = TextFormField(
      autofocus: false,
      controller: firstnameController,
      keyboardType: TextInputType.name,
      // validator: (){},
      onSaved: (value) {
        firstnameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: "Enter First Name",
          fillColor: Color.fromARGB(255, 100, 100, 100),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
          labelText: 'First Name:'),
    );
    //secondnameField
    final secondnameField = TextFormField(
      autofocus: false,
      controller: secondnameController,
      keyboardType: TextInputType.name,
      // validator: (){},
      onSaved: (value) {
        secondnameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: "Enter Second Name",
          fillColor: Color.fromARGB(255, 100, 100, 100),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
          labelText: 'Second Name:'),
    );
    //emailField
    final emailfield = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "example@hotmail.com",
          fillColor: Color.fromARGB(255, 100, 100, 100),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
          labelText: 'Email:'),
    );
    //pswdnameField
    final pswdField = TextFormField(
      autofocus: false,
      controller: pswdController,
      // validator: (){},
      onSaved: (value) {
        pswdController.text = value!;
      },
      textInputAction: TextInputAction.next,
      obscureText: true,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          fillColor: Color.fromARGB(255, 100, 100, 100),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
          labelText: 'Password:'),
    );
    //confirmpswdField
    final confirmpswdField = TextFormField(
      autofocus: false,
      controller: confirmpswdController,
      // validator: (){},
      onSaved: (value) {
        confirmpswdController.text = value!;
      },
      textInputAction: TextInputAction.next,
      obscureText: true,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          fillColor: Color.fromARGB(255, 100, 100, 100),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
          labelText: 'Confirm Password:'),
    );
    final signupButton = Material(
      borderRadius: BorderRadius.circular(13),
      elevation: 5,
      color: Colors.blue,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text('Sign Up',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
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
                        firstnameField,
                        sb,
                        secondnameField,
                        sb,
                        emailfield,
                        sb,
                        pswdField,
                        sb,
                        confirmpswdField,
                        sb,
                        signupButton
                      ])),
            )),
      )),
    );
  }
}
