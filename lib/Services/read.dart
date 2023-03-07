import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

readData() {
  String collectionPath = 'PersonsInformation';
  return StreamBuilder(
      stream: FirebaseFirestore.instance.collection(collectionPath).snapshots(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        final docs = snapshot.data!.docs;
        return ListView.builder(
            itemCount: docs.length,
            itemBuilder: ((context, index) => Container(
                      width: double.infinity,
                      height: 80,
                      child: Card(
                        child: ListTile(
                          title: Text(docs[index]['name']),
                          subtitle: Text(docs[index]['age']),
                          leading: Text(docs[index]['gender']),
                          trailing: Text(docs[index]['date']),
                        ),
                      ),
                      // Card(
                      //   shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(5)),
                      //   elevation: 5,
                      //   color: Colors.white,
                      //   child: Column(
                      //     children: [
                      //       const Text('أسم الشخص',
                      //           style: TextStyle(
                      //               color: Colors.black,
                      //               fontWeight: FontWeight.bold)),
                      //       Text(docs[index]['name'],
                      //           style: const TextStyle(
                      //               color: Colors.black,
                      //               fontWeight: FontWeight.bold)),
                      //     ],
                      //   ),
                      // ),
                    )
                //  Card(

                //           child: Column(
                //             children: [
                //               Row(
                //                 children: [
                //                   const Text('أسم الشخص'),
                //                   Text(docs[index]['name']),
                //                 ],
                //               )
                //             ],
                //           ),
                //         )
                // Container(
                //       padding: EdgeInsets.all(8),
                //       child: Column(
                //         children: [
                //           Text(docs[index]['name']),
                //           Text(docs[index]['age']),
                //           Text(docs[index]['date']),
                //           Text(docs[index]['gender']),
                //           //  Text(docs[index]['note']),
                //         ],
                //       ),
                //     ))
                ));
      }));
}

// ListView.builder

// StreamBuilder

