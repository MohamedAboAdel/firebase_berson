import 'package:firebase_berson/Services/logi.dart';
import 'package:firebase_berson/Services/signin.dart';
import 'package:firebase_berson/Widget/edit.dart';
import 'package:firebase_berson/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/bezierContainer.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    TextEditingController email = TextEditingController();
    TextEditingController userName = TextEditingController();

    TextEditingController password = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: BezierContainer()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    title(),
                    SizedBox(height: 50),
                    entryField('البريد الالكتروني', controller: email),
                    entryField('اسم المستخدم', controller: userName),
                    entryField('كلمة المرور',
                        isPassword: true, controller: password),
                    SizedBox(height: 20),
                    submitButton(context, () {
                      UserCreate(email.text, password.text, userName.text);
                    }, 'دخول'),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      child: Text('هل نسيت كلمة المرور',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: height * .055),
                    createAccountLabel(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
