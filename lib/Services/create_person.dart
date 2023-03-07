import 'package:cloud_firestore/cloud_firestore.dart';

createPerson(
  String name,
  String age,
  String date,
  String gender,
  String note,
) {
  dynamic db = FirebaseFirestore.instance;
  db.collection("PersonsInformation").add({
    "name": name,
    "age": age,
    "date": date,
    "gender": gender,
    " note": note,
  }).then((DocumentReference doc) =>
      print('DocumentSnapshot added with ID: ${doc.id}'));
}
