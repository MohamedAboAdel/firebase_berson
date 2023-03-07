import 'package:firebase_berson/Services/logi.dart';
import 'package:firebase_berson/Services/signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/bezierContainer.dart';
import 'Widget/edit.dart';
import 'loginPage.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({
    Key? key,
  }) : super(key: key);

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        // Navigator.push(
        // context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ليس لدي حساب للدخول',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(LoginPage());
              },
              child: Text(
                'انشاء حساب',
                style: TextStyle(
                    color: Color(0xfff79c4f),
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    title(),
                    SizedBox(
                      height: 50,
                    ),
                    entryField("البريد الالكتروني", controller: email),
                    entryField("كلمة المرور", controller: password),
                    SizedBox(
                      height: 20,
                    ),
                    submitButton(context, () {
                      UserSign(email.text, password.text);
                    }, 'تسجيل الدخول'),
                    SizedBox(height: height * .14),
                    _loginAccountLabel(),
                  ],
                ),
              ),
            ),
            // Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
