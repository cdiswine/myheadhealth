import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

///Videos///

final backVideoPlayerController = VideoPlayerController.network(
    'https:\/\/r3---sn-t0a7ln7d.googlevideo.com\/videoplayback?signature=124D3D742A15EB7A472736A6EBBB5EAD700845DB.599B54E2550FB0E104374DEA2DE9E50A7FD5E157&ipbits=0&dur=1057.738&fvip=6&ei=ZERmXKb3AcWD8gSfqo6IAQ&ratebypass=yes&expire=1550227652&lmt=1540877762191859&ms=au%2Conr&id=o-AOV8VYdgtlJOxcUzDCdzvbmM2JkQelDDenaDzOanAx3A&pl=20&mm=31%2C26&mn=sn-t0a7ln7d%2Csn-vgqs7ney&itag=22&source=youtube&txp=5531432&ip=54.82.82.106&requiressl=yes&mime=video%2Fmp4&key=yt6&mt=1550205397&sparams=dur%2Cei%2Cid%2Cip%2Cipbits%2Citag%2Clmt%2Cmime%2Cmm%2Cmn%2Cms%2Cmv%2Cpl%2Cratebypass%2Crequiressl%2Csource%2Cexpire&mv=u');


final backChewieController = ChewieController(
  videoPlayerController: backVideoPlayerController,
  aspectRatio: 3 / 2,
  autoPlay: false,
  looping: false,
);



final backPlayerWidget = Chewie(
  controller: backChewieController,
);

///Stretch Page///

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
void dispose() {
  backVideoPlayerController.dispose();
  backChewieController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black12,
              elevation: 100.0,
              expandedHeight: 350.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Exercises',
                style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w400)),
                background: Image.asset('images/activity.jpg', fit: BoxFit.cover)),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
          padding: const EdgeInsets.all(20.0),
          child:  Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/3.png'))),
            child: backPlayerWidget),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('20 min Yoga', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black87),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: Text('Yoga has both physical and mental benefits. Practicing yoga regularly helps with muscle stiffness, balance and overall heart health.', 
          style: TextStyle(fontSize: 14.0, color: Colors.black45),),
        ), 
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Exercises'),
    //     backgroundColor: Colors.grey[800],
    //   ),
    //   body: ListView(
    //   children: <Widget>[
    //     Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Image.asset('images/activity.jpg', fit: BoxFit.cover),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Image.asset('images/activity.jpg', fit: BoxFit.cover),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Image.asset('images/activity.jpg', fit: BoxFit.cover),
    //     ),
    //   ],
    //   ),
    // );
  }
}

