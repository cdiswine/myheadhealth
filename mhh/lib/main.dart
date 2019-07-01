import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './myTreatments.dart' as treatments;
import './myTracker.dart' as tracker;
import './myHeadHealth.dart' as headhealth;
import './stretch.dart' as stretch;
import './activity.dart' as activity;
import './relaxation.dart' as relaxation;
import './sleep.dart' as sleep;
import './medicine.dart' as medicine;
import './nutrition.dart' as nutrition;
import './doneButton.dart' as extra;


void main() {
  runApp(
    new MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    home: new MyTabs(),
    initialRoute:  '/',
    routes: {
      '/StretchPage': (context) => stretch.StretchPage(),
      '/ActivityPage': (context) => activity.ActivityPage(),
      '/RelaxationPage': (context) => relaxation.RelaxationPage(),
      '/SleepPage': (context) => sleep.SleepPage(),
      '/NutritionPage': (context) => nutrition.NutritionPage(),
      '/MedicinePage': (context) => medicine.MedicinePage(),
      '/myTreatments': (context) => treatments.Treatments(),
      '/doneButton': (context) => extra.TabbedAppBar(),
      '/myTracker': (context) => tracker.DateStrip(),
      '/myHeadhealth': (context) => headhealth.Headhealth()
      },
    )
  );
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4); //changed from 3 to 4
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MyHeadHealth"),
      backgroundColor: Colors.grey[800],
      ),
      bottomNavigationBar: new Material( 
        color: Colors.grey[800],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new TabBar(
          controller: controller,
          tabs: <Tab>[ 
            new Tab(icon: new Icon(Icons.assignment, size: 32.0)), 
            new Tab(icon: new Icon(Icons.donut_large, size: 32.0)),
            new Tab(icon: new Icon(Icons.trending_up, size: 32.0)),
            new Tab(icon: new Icon(Icons.trending_up, size: 32.0)), ///added
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.white,
          ),
        )
      ),
      body: new TabBarView( 
        controller: controller,
        children: <Widget>[
          treatments.Treatments(),
          tracker.DateStrip(),
          headhealth.Headhealth(),
          extra.TabbedAppBar(), ///added
        ]
      )
    );
  }
}











// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(

//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'MyTracker'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {

//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
       
//         title: Text(widget.title),
//       ),
//       body: Center(
       
//         child: Column(
   
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
