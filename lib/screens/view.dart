import 'package:firebase_berson/Widget/button.dart';
import 'package:firebase_berson/screens/read_person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 190, 238, 127),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CreateButton(
                  text: 'الاشخاص',
                  width: 200,
                  height: 50,
                  color: Color(0xfffbb448),
                  onPressed: () {
                    Get.to(() => ReadPerson());
                  }),
              SizedBox(
                height: 20,
              ),
              CreateButton(
                  text: 'الاشياء المفقودة',
                  width: 200,
                  height: 50,
                  color: Color(0xfffbb448),
                  onPressed: () {
                    Get.to(() => ReadPerson());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
