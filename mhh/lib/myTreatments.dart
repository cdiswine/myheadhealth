import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Treatments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.grey[300],
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Container(
            padding: EdgeInsets.all(5.0),
            child: GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.white.withOpacity(0.9),
                    onPressed: () {Navigator.pushNamed(context, '/StretchPage');},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(IconData(0xe900, fontFamily: 'Stretch'), size: 40.0, color: Colors.deepOrangeAccent,),
                      ),
                      Text('Stretch', style: TextStyle(fontSize: 18.0, color: Colors.deepOrangeAccent, fontWeight: FontWeight.w600),),
                    ],
                    ),
                ),
                  ),
                  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.white.withOpacity(0.9),
                    onPressed: () {Navigator.pushNamed(context, '/ActivityPage');},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(IconData(0xe902, fontFamily: 'activity'), size: 40.0, color: Colors.pinkAccent,),
                      ),
                      Text('Activity', style: TextStyle(fontSize: 18.0, color: Colors.pinkAccent, fontWeight: FontWeight.w600),),
                    ],
                    ),
                ),
                  ),
                  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.white.withOpacity(0.9),
                    onPressed: () {Navigator.pushNamed(context, '/RelaxationPage');},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(IconData(0xe900, fontFamily: 'relaxation'), size: 40.0, color: Colors.purpleAccent,),
                      ),
                      Text('Relaxation', style: TextStyle(fontSize: 18.0, color: Colors.purpleAccent, fontWeight: FontWeight.w600),),
                    ],
                    ),
                ),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.white.withOpacity(0.9),
                    onPressed: () {Navigator.pushNamed(context, '/SleepPage');},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(IconData(0xe904, fontFamily: 'sleep'), size: 40.0, color: Colors.lightBlueAccent,),
                      ),
                      Text('Sleep', style: TextStyle(fontSize: 18.0, color: Colors.lightBlueAccent, fontWeight: FontWeight.w600),),
                    ],
                    ),
                ),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.white.withOpacity(0.9),
                    onPressed: () {Navigator.pushNamed(context, '/NutritionPage');},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(IconData(0xe901, fontFamily: 'nutrition'), size: 40.0, color: Colors.yellow[700],),
                      ),
                      Text('Nutrition', style: TextStyle(fontSize: 18.0, color: Colors.yellow[700], fontWeight: FontWeight.w600),),
                    ],
                    ),
                ),
                  ),
                   Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.white.withOpacity(0.9),
                    onPressed: () {Navigator.pushNamed(context, '/MedicinePage');},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(IconData(0xe903, fontFamily: 'medication'), size: 40.0, color: Colors.greenAccent[700],),
                      ),
                      Text('Medication', style: TextStyle(fontSize: 18.0, color: Colors.greenAccent[700], fontWeight: FontWeight.w600),),
                    ],
                    ),
                ),
                  ),
              ],
                ),
          );
        },
      ),
    );
  }
}