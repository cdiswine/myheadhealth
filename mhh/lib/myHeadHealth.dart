import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:table_calendar/table_calendar.dart';
import 'dart:math';
import 'dart:ui';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:calendar_widget/calendar_widget.dart';


// class Headhealth extends StatefulWidget {
//   @override
//   _HeadhealthState createState() => _HeadhealthState();
// }
class Headhealth extends StatefulWidget {
  @override
  _HeadhealthState createState() => _HeadhealthState();
}


class _HeadhealthState extends State<Headhealth> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              child: Center(
                child: Text('How are you feeling today?', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.deepPurple[400]),)),
             ),
          SliderTheme(
            data: SliderThemeData(
            activeTickMarkColor: Colors.purple, 
            activeTrackColor: Colors.purple, 
            disabledActiveTickMarkColor: Colors.purple, 
            disabledActiveTrackColor: Colors.purple, 
            disabledInactiveTickMarkColor: Colors.purple, 
            disabledInactiveTrackColor: Colors.purple, 
            disabledThumbColor: Colors.purple, 
            inactiveTickMarkColor: Colors.purple, 
            inactiveTrackColor: Colors.purple, 
            overlayColor: Colors.purple, 
            showValueIndicator: ShowValueIndicator.always, 
            thumbColor: Colors.purple, 
            thumbShape: RoundSliderThumbShape(), 
            valueIndicatorColor: Colors.purple, 
            valueIndicatorShape: PaddleSliderValueIndicatorShape(), 
            valueIndicatorTextStyle: TextStyle(fontSize: 20.0),
            ),
            child: Slider(
              onChanged: (value) {},
              value: 20.0,
              label: 'Headache',
              min: 0.0,
              max: 100.0,
            ),
          ),
          Slider(
            label: 'Neck Pain',
            min: 0.0,
            max: 100.0,
            value: 50.0,
            onChanged: (value) {},
          ),
          Slider(
            label: 'Tiredness',
            min: 0.0,
            max: 100.0,
            value: 50.0,
            onChanged: (value) {},
          ),
          Slider(
            label: 'Anxiety',
            min: 0.0,
            max: 100.0,
            value: 50.0,
            onChanged: (value) {},
          ),
          Slider(
            label: 'Mental Fog',
            min: 0.0,
            max: 100.0,
            value: 50.0,
            onChanged: (value) {},
          ),
          FloatingActionButton.extended(
            onPressed: () {}, //show graph
                icon: Icon(Icons.insert_chart, size: 30.0, color: Colors.deepPurpleAccent,),
                label: const Text('Check My Progress', style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 12.0),),
                backgroundColor: Colors.white,
          ),
          ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

    );
  }
}

// class _HeadhealthState extends State<Headhealth> {
// // TickerProviderStateMixin {

// double percentage;

// // double newPercentage = 0.0;
// // AnimationController percentageAnimationController;

//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//         percentage = 0.0;
//     });

  //  percentageAnimationController = new AnimationController(
  //       vsync: this,
  //     duration: new Duration(milliseconds: 1000)
  //   )
  //   ..addListener((){
  //     setState(() {
  //       percentage = lerpDouble(percentage,newPercentage,percentageAnimationController.value);
  //     });
  //   });

  // }
  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: <Widget>[
  //       Stack(
  //         children: <Widget>[
  //           Calendar(
  //             width: MediaQuery.of(context).size.width - 32,
  //           ),
  //         Positioned(
  //           right: 60.0,
  //           bottom: 60.0,
  //           child: Container(
  //           height: 40.0,
  //           width: 34.0,
  //           child: new CustomPaint(
  //             foregroundPainter: new MyPainter(
  //                 lineColor: Colors.amber,
  //                 completeColor: Colors.blueAccent,
  //                 completePercent: percentage,
  //                 width: 3.0
  //             ),
  //             child: Padding(
  //               padding: const EdgeInsets.all(0.0),
  //               child: Center(
  //                 child: RaisedButton(
  //                   color: Colors.transparent,
  //                   child: Text(''),
  //                   shape: CircleBorder(),
  //                   onPressed: () {
  //                     setState(() {
  //                       percentage += 10.0;
  //                       if(percentage>100.0){
  //                         percentage=0.0;
  //                       }
  //                     });
  //                   },
  //                 ),
  //               ),
  //             ),
  //           ),
  //       ),
  //         ),
  //         Positioned(
  //           right: 107.0,
  //           bottom: 60.0,
  //           child: Container(
  //           height: 40.0,
  //           width: 34.0,
  //           child: new CustomPaint(
  //             foregroundPainter: new MyPainter(
  //                 lineColor: Colors.amber,
  //                 completeColor: Colors.blueAccent,
  //                 completePercent: percentage,
  //                 width: 3.0
  //             ),
  //           ),
  //           ),
  //         ),
  //       ],
  //       ),
        // new Container(
        //   height: 60.0,
        //   width: 60.0,
        //   child: new CustomPaint(
        //     foregroundPainter: new MyPainter(
        //         lineColor: Colors.amber,
        //         completeColor: Colors.blueAccent,
        //         completePercent: percentage,
        //         width: 5.0
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(0.0),
        //       child: Center(
        //         child: RaisedButton(
        //           child: Text('31'),
        //           shape: CircleBorder(),
        //           onPressed: () {
        //             setState(() {
        //               percentage += 10.0;
        //               if(percentage>100.0){}
        //             });
        //           },
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
//       ],
//     );
//   }
// }



// class MyPainter extends CustomPainter{
//   Color lineColor;
//   Color completeColor;
//   double completePercent;
//   double width;
//   MyPainter({this.lineColor,this.completeColor,this.completePercent,this.width});
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint line = new Paint()
//         ..color = lineColor
//         ..strokeCap = StrokeCap.round
//         ..style = PaintingStyle.stroke
//         ..strokeWidth = width;
//     Paint complete = new Paint()
//       ..color = completeColor
//       ..strokeCap = StrokeCap.round
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = width;
//     Offset center  = new Offset(size.width/2, size.height/2);
//     double radius  = min(size.width/2,size.height/2);
//     canvas.drawCircle(
//         center,
//         radius,
//         line
//     );
//     double arcAngle = 2*pi* (completePercent/100);
//     canvas.drawArc(
//         new Rect.fromCircle(center: center,radius: radius),
//         -pi/2,
//         arcAngle,
//         false,
//         complete
//     );
//   }
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }



  // DateTime _selectedDay;
  // Map<DateTime, List> _events;
  // List _selectedEvents;

  // @override
  // void initState() {
  //   super.initState();
  //   final now = DateTime.now();
  //   _selectedDay = DateTime(now.year, now.month, now.day);
  //   _events = {
  //     DateTime(2019, 2, 22): ['Event A', 'Event B', 'Event C'],
  //     DateTime(2019, 2, 23): ['Event A'],
  //     DateTime(2019, 2, 24): ['Event B', 'Event C'],
  //     DateTime(2019, 3, 1): ['Event A', 'Event B', 'Event C', 'Event D', 'Event E', 'Event F', 'Event G'],
  //     DateTime(2019, 1, 29): Set.from(['Event A', 'Event A', 'Event B']).toList(),
  //     DateTime(2019, 1, 30): ['Event A', 'Event A', 'Event B'],
  //   };
  //   _selectedEvents = _events[_selectedDay] ?? [];
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
      // appBar: AppBar(
      //   title: Text('table calendar'),
      // ),
  //     body: Column(
  //       mainAxisSize: MainAxisSize.max,
  //       children: <Widget>[
  //         _buildTableCalendar(),
  //         const SizedBox(height: 8.0),
  //         Expanded(child: _buildEventList()),
  //       ],
  //     ),
  //   );
  // }

  // Configure the calendar here
  // Widget _buildTableCalendar() {
  //   return TableCalendar(
  //     selectedColor: Colors.deepPurpleAccent[400],
  //     todayColor: Colors.orangeAccent[100],
  //     eventMarkerColor: Colors.amberAccent[200],
  //     calendarFormat: CalendarFormat.week,
  //     centerHeaderTitle: false,
  //     formatToggleVisible: true,
  //     formatToggleTextStyle: TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
  //     formatToggleDecoration: BoxDecoration(
  //       color: Colors.deepPurpleAccent[200],
  //       borderRadius: BorderRadius.circular(16.0),
  //     ),
  //     events: _events,
  //     onDaySelected: (day) {
  //       setState(() {
  //         _selectedDay = day;
  //         _selectedEvents = _events[_selectedDay] ?? [];
  //       });
  //     },
  //   );
  // }

//   Widget _buildEventList() {
//     return ListView(
//       children: _selectedEvents
//           .map((event) => Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 0.8),
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//                 child: ListTile(
//                   title: Text(event.toString()),
//                   onTap: () => print('$event tapped!'),
//                 ),
//               ))
//           .toList(),
//     );
//   }
// }


      