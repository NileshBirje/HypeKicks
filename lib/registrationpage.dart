// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hypekicks_snkrs/models/user_model.dart';
import 'package:hypekicks_snkrs/screens/home/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
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
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Please Enter Name");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter Valid Name");
        }
        return null;
      },
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
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Name");
        }

        return null;
      },
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
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your EmailID");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter Valid EmailID");
        }
        return null;
      },
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
    //pswdField
    final pswdField = TextFormField(
      autofocus: false,
      controller: pswdController,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for Login");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter Valid Password");
        }
        return null;
      },
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
      validator: (value) {
        if (value!.isEmpty) {
          return ("Password is required for Login");
        }
        if (confirmpswdController.text != pswdController.text) {
          return ("Password does not match");
        }
        return null;
      },
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
        onPressed: () {
          _signUp(emailController.text, pswdController.text);
        },
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

  void _signUp(String email, String pswd) async {
    if (_formkey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: pswd)
          .then((uid) => {
                postDetailsToFirestore(),
                Fluttertoast.showToast(msg: "Sign Up Successful"),
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route) => false)
                //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sending these values

    FirebaseFirestore fF = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    UserModel uM = UserModel();

    // write the values
    uM.email = user!.email;
    uM.firstname = firstnameController.text;
    uM.secondname = secondnameController.text;
    uM.uid = user.uid;

    await fF.collection("users").doc(user.uid)
       .set(uM.toMap());
  }
}
