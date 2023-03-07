import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_berson/Services/logi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Services/create_person.dart';
import '../Widget/bezierContainer.dart';
import '../Widget/edit.dart';

class Person extends StatelessWidget {
  Person({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    TextEditingController name = TextEditingController();
    TextEditingController age = TextEditingController();
    TextEditingController date = TextEditingController();
    TextEditingController gender = TextEditingController();
    TextEditingController note = TextEditingController();

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
                    entryField("اسم الشخص", controller: name),
                    entryField("العمر", controller: age),
                    entryField("التاريخ", controller: date),
                    entryField("النوع", controller: gender),
                    entryField("ملاحظات", controller: note),
                    SizedBox(
                      height: 20,
                    ),
                    submitButton(context, () {
                      //دالة تسجيل الاشخاص
                      createPerson(name.text, age.text, date.text, gender.text,
                          note.text);
                      //   UserCreate(email.text,. password.text);
                    }, 'تسجيل '),
                    SizedBox(height: height * .14),
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
