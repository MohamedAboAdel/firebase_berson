import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_berson/Services/read.dart';
import 'package:firebase_berson/Widget/edit.dart';
import 'package:firebase_berson/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ReadPerson extends StatefulWidget {
  const ReadPerson({super.key});

  @override
  State<ReadPerson> createState() => _ReadPersonState();
}

class _ReadPersonState extends State<ReadPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('الاشخاص'),
          leading: IconButton(
            icon: Icon(Icons.sign_language_outlined),
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Get.to(SignUpPage());
            },
          ),
        ),
        body: Center(
          child: readData(),
        ));
  }
}
