import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:calendar_widget/calendar_widget.dart';
import 'dart:math';
import 'dart:ui';


class TabbedAppBar extends StatefulWidget {
  
  @override
  _State createState() => _State();
}


class _State extends State<TabbedAppBar> with SingleTickerProviderStateMixin{
TabController controller;
final specialTextController = TextEditingController();
final taskController = TextEditingController();
double percentage;




  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3); 
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    percentage = 0.0;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

   void textDispose() {
    specialTextController.dispose();
    super.dispose();
  }

List _cities =
  ["Stretch", "Activity", "Relaxation", "Sleep", "Nutrition", "Medication"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }
  

  @override
  Widget build(BuildContext context) {
    
  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });

  }

    
    return Scaffold(
      appBar: TabBar(
        controller: controller,
        tabs: <Widget>[
          Tab(child: Text('Daily', style: TextStyle(color: Colors.deepPurpleAccent),)),
          Tab(child: Text('Whenever', style: TextStyle(color: Colors.deepPurpleAccent),)),
          Tab(child: Icon(Icons.today, color: Colors.deepPurpleAccent,),),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), 
        onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Add Goal'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Select Goal',
                                    border: OutlineInputBorder(),
                                  ),
                                    value: _currentCity,
                                    items: _dropDownMenuItems,
                                    onChanged: changedDropDownItem,
                                    // hint: Text('Select Item'),
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                              //   child: TextFormField(
                              //     controller: taskController,
                              //     decoration: InputDecoration(
                              //       labelText: 'Select Goal',
                              //       border: OutlineInputBorder(),
                              //     ),
                              //   ),
                              // ), //TODO: dropdown?
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: TextFormField(
                                  maxLines: 5,
                                  controller: specialTextController,
                                  decoration: InputDecoration(
                                    labelText: 'Special Instructions',
                                    border: OutlineInputBorder(),
                                  ),
                                ), 
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Daily'),
                            onPressed: () { Navigator.of(context).pop(Firestore.instance.collection('task').document().setData({'name': _currentCity, 'instruction':specialTextController.text})); }
                          ),
                          FlatButton(
                            child: Text('Whenever'),
                            onPressed: () { Navigator.of(context).pop(Firestore.instance.collection('whenever').document().setData({'name': _currentCity, 'instruction': specialTextController.text})); },
                            // () { Navigator.of(context).pop(Firestore.instance.collection('whenever').document().setData({'name': taskController.text, 'instruction': specialTextController.text})); },
                          ), ///TODO: whenever controllers; show data on whenever tab
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () {
                             Navigator.of(context).pop();
                            }
                          ),
                        ],
                      );
                    }
                  );
                }, 
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
            Center(
            child: new ListView(
              children: <Widget>[
                Container(
                  height: 30.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Center(child: Text('What will you do today?', 
                    style: TextStyle(
                      fontWeight: FontWeight.w500, 
                      fontSize: 20.0, 
                      color: Colors.deepPurple[400]),)),
                  ),
                ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _buildBody(context),
                ),
              ],
            ),
              ],
            ),
        ),
///Whenever page Content starts here///
            Center(
            child: new ListView(
              children: <Widget>[
                Container(
                  height: 30.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Center(child: Text('What will you do whenever?', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.deepPurple[400]),)),
                  ),
                ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _buildWheneverBody(context),
                ),
              ],
            ),
              ],
            ),
        ),
//calendar
        Stack(
          children: <Widget>[
           Center(
             child: Calendar(
              width: MediaQuery.of(context).size.width - 32,
            ),
           ),
          Positioned(
            right: 122.0,
            bottom: 170.0,
            child: Container(
            height: 40.0,
            width: 35.0,
            child: new CustomPaint(
              foregroundPainter: new MyPainter(
                  lineColor: Colors.amber,
                  completeColor: Colors.blueAccent,
                  completePercent: percentage,
                  width: 3.0
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: RaisedButton(
                    color: Colors.transparent,
                    child: Text(''),
                    shape: CircleBorder(),
                    onPressed: () {
                      setState(() {
                        percentage += 10.0;
                        if(percentage>100.0){
                          percentage=0.0;
                        }
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
                  Positioned(
            right: 170.0,
            bottom: 170.0,
            child: Container(
            height: 40.0,
            width: 35.0,
            child: new CustomPaint(
              foregroundPainter: new MyPainter(
                  lineColor: Colors.amber,
                  completeColor: Colors.blueAccent,
                  completePercent: percentage,
                  width: 3.0
              ),
            ),
          ),
        ),
        ],
        ),
        ],
      ),
    );
  }
}

//Daily Goal List

Widget _buildBody(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
    stream: Firestore.instance.collection('task').snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) return LinearProgressIndicator();

      return _buildList(context, snapshot.data.documents);
    },);
}

Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
  return Column(
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
}

Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);
// bool value = false;
  final _saved = Set();
  final _isAlreadySaved = _saved.contains(data);
///TODO: add checkbox methods

    return Padding(
      key: ValueKey(record.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Slidable(
              delegate: SlidableDrawerDelegate(),
              actionExtentRatio: 0.4,
              child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            // controlAffinity: ListTileControlAffinity.leading,
            title: Text(record.name),
            subtitle: Text(record.direction),
            // value: _isAlreadySaved, 
            onTap: () {
              record.reference.updateData({'status': DateTime.now()});
            },
            // () {
            //   setState(() {
            //                   _isAlreadySaved ? _saved.remove(data) : _saved.add(data);
            //                 });
            //               },
                          trailing: Icon(
                            _isAlreadySaved ? Icons.favorite : Icons.favorite_border,
                            color: _isAlreadySaved ? Colors.red : Colors.blue,
                          ),
                          // onChanged: (bool value) {
                          //   record.reference.updateData({
                          //     'id':record.reference,
                          //   });
                          // }, //TODO: add to calendar when checked
                        ),
                      ),
                      secondaryActions: <Widget>[
                        IconSlideAction(
                          caption: 'Delete',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () => record.reference.delete(),
                        ),
                      ],
                    ),
                  );
                }
              


class Record {
  final String name;
  final String direction;
  final DocumentReference reference;
  

  Record.fromMap(Map<String, dynamic> map, {this.reference})
    : assert(map['name'] != null),
      assert(map['instruction'] != null),
      name = map['name'],
      direction = map['instruction'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$direction>";
}

//Whenever Goal List

Widget _buildWheneverBody(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
    stream: Firestore.instance.collection('whenever').snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) return LinearProgressIndicator();

      return _buildWheneverList(context, snapshot.data.documents);
    },);
}

Widget _buildWheneverList(BuildContext context, List<DocumentSnapshot> snapshot) {
  return Column(
      children: snapshot.map((data) => _buildWheneverListItem(context, data)).toList(),
    );
}

Widget _buildWheneverListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Slidable(
              delegate: SlidableDrawerDelegate(),
              actionExtentRatio: 0.4,
              child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            title: Text(record.name),
            subtitle: Text(record.direction),
          ),
        ),
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => record.reference.delete(),
          ),
        ],
      ),
    );
  }

class WheneverRecord {
  final String name;
  final String direction;
  final DocumentReference reference;

  WheneverRecord.fromMap(Map<String, dynamic> map, {this.reference})
    : assert(map['name'] != null),
      assert(map['instruction'] != null),
      name = map['name'],
      direction = map['instruction'];

  WheneverRecord.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$direction>";
}

class MyPainter extends CustomPainter{
  Color lineColor;
  Color completeColor;
  double completePercent;
  double width;
  MyPainter({this.lineColor,this.completeColor,this.completePercent,this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Paint line = new Paint()
        ..color = lineColor
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = width;
    Paint complete = new Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center  = new Offset(size.width/2, size.height/2);
    double radius  = min(size.width/2,size.height/2);
    canvas.drawCircle(
        center,
        radius,
        line
    );
    double arcAngle = 2*pi* (completePercent/100);
    canvas.drawArc(
        new Rect.fromCircle(center: center,radius: radius),
        -pi/2,
        arcAngle,
        false,
        complete
    );
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}