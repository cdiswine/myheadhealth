import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

///Stretch Page///

class SleepPage extends StatefulWidget {
  @override
  _SleepPageState createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black12,
              elevation: 100.0,
              expandedHeight: 400.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Sleeping Well',
                style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w400)),
                background: Image.asset('images/sleep.jpg', fit: BoxFit.cover)),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
        ExpansionTile(
          title: Text('Daytime', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black87),),
          children: <Widget>[
                  ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Set an alarm to try to wake up at the same time every day.', 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
        ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Limit TV watching and try to get outdoors for some sunlight.', 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
        ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Don't nap more than 20 minutes during the day.", 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
          ],
        ),
        ExpansionTile(
          title: Text('At Night', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black87),),
          children: <Widget>[
            ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Try to go to bed at the same time every night and set your alarm for the next day.", 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
          ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Follow a bedtime routine. For example, put out your clothes for morning, brush your teeth and then read or listen to relaxing music for 10 minutes before turning out the light.", 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
          ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Avoid caffeine, nicotine, alcohol and sugar for five hours before bedtime.", 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
          ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Avoid eating prior to sleep to allow time to digest, but also do not go to bed hungry, as this can also wake you from sleep.", 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
          ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Keep stress out of the bedroom. For example, do not work or pay bills, eat, read or watch TV while in bed.", 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
          ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("If you don't fall asleep in 30 minutes, get out of bed and do something relaxing or boring until you feel sleepy.", 
            style: TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.w400, 
              color: Colors.black87),
              ),
          ),
          ),
          ],
        ),
          ],
        ),
      ),
    );



    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Sleep'),
    //     backgroundColor: Colors.black,
    //     actions: <Widget>[
    //         new IconButton(icon: const Icon(Icons.home), onPressed: () {Navigator.pop(context);}),
    //         new IconButton(icon: const Icon(Icons.check), onPressed: () {Navigator.pushNamed(context, '/SecondPage');}),
    //       ],
    //   ),
    //         body: Image.asset('images/sleep.jpg', fit: BoxFit.cover)
    //         // Navigate to the second screen using a named route
    //         //Navigator.pushNamed(context, '/ActivityPage')
    //       );
        }
}