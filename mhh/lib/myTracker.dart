import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_calendar/flutter_calendar.dart';
import 'dart:async';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:calendar_widget/calendar_widget.dart';

class DateStrip extends StatefulWidget {
  @override
  _DateStripState createState() => _DateStripState();
}

class _DateStripState extends State<DateStrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildCheckbox(context)
      // ListView(
//         children: <Widget>[
//           FloatingActionButton(
//         onPressed: () {
//                   return showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         title: Text('Create Goal'),
//                         content: SingleChildScrollView(
//                           child: ListBody(
//                             children: <Widget>[
//                               TextFormField(
//                                   maxLines: 5,
//                                   controller: null, //specialTextController,
//                                 ), 
//                             ],
//                           ),
//                         ),
//                         actions: <Widget>[
//                           FlatButton(
//                             child: Text('Save'),
//                             onPressed: () { Navigator.of(context).pop(Firestore.instance.collection('recent').document().setData({'created_at':DateTime.now()})); })
//                         ]);
//                      }
//                   );
//           // Write data to Firestore
//          }),
//          _buildCheckbox(context),
//         ],
//       ),
        );
  }
}

// Read data from Firestore
Widget _buildCheckbox(BuildContext context) {
// final item = Item.fromSnapshot(data);

  return StreamBuilder<QuerySnapshot>(
    stream: Firestore.instance.collection('task').snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) return LinearProgressIndicator();

      return Center(
        child: Calendar(
          width: MediaQuery.of(context).size.width - 32,
          ///TODO: Read 'status' from Firestore
        ),
      );

       });
    }
