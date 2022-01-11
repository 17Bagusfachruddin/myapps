import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginku extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailC = new TextEditingController();
  final TextEditingController passC = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final TxtEmail = TextFormField(
      autofocus: false,
      controller: emailC,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailC.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 20),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final TxtPass = TextFormField(
      autofocus: false,
      controller: passC,
      obscureText: true,
      onSaved: (value) {
        passC.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 20),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final BtnLog = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.blueAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.teal[100],
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/images/satu.png",
                          fit: BoxFit.contain,
                        )),
                    TxtEmail,
                    const SizedBox(
                      height: 25,
                    ),
                    TxtPass,
                    const SizedBox(
                      height: 45,
                    ),
                    BtnLog,
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dont Have Account?"),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
