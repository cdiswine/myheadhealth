import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

///Videos///

final backVideoPlayerController = VideoPlayerController.network(
    'https:\/\/r2---sn-t0a7ln7d.googlevideo.com\/videoplayback?ratebypass=yes&dur=194.908&clen=5429814&fvip=2&mime=video%2Fmp4&txp=5431432&key=yt6&expire=1550227702&gir=yes&itag=18&pl=20&mn=sn-t0a7ln7d%2Csn-vgqskn7z&ip=54.82.82.106&mm=31%2C26&ms=au%2Conr&mv=u&mt=1550205397&id=o-AL5b84IBqPRPMicPNFfdmxTtQ-NvUt88wbJgf2OTgnPy&signature=876F53C6E46526051892723E30589F731074045C.76813BB36126DD7D96C9C439AB7CB3B49D791778&ipbits=0&lmt=1540092250570355&sparams=clen%2Cdur%2Cei%2Cgir%2Cid%2Cip%2Cipbits%2Citag%2Clmt%2Cmime%2Cmm%2Cmn%2Cms%2Cmv%2Cpl%2Cratebypass%2Crequiressl%2Csource%2Cexpire&ei=lkRmXKHcHYOShgaMzpWACg&source=youtube&requiressl=yes');

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

class RelaxationPage extends StatefulWidget {
  @override
  _RelaxationPageState createState() => _RelaxationPageState();
}

class _RelaxationPageState extends State<RelaxationPage> {
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
                title: Text('Meditations',
                style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w400)),
                background: Image.asset('images/relaxation.jpg', fit: BoxFit.cover)),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
          padding: const EdgeInsets.all(20.0),
          child:  Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/4.png'))),
            child: backPlayerWidget),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('2 min Meditation', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black87),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: Text('This meditation involves mindful breathing. Practicing meditation regularly helps to reduce stress, anxiety and promote healing.', 
          style: TextStyle(fontSize: 14.0, color: Colors.black45),),
        ), 
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Meditations'),
    //     backgroundColor: Colors.grey[800],
    //   ),
    //   body: ListView(
    //   children: <Widget>[
    //     Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Image.asset('images/relaxation.jpg', fit: BoxFit.cover),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Image.asset('images/relaxation.jpg', fit: BoxFit.cover),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Image.asset('images/relaxation.jpg', fit: BoxFit.cover),
    //     ),
    //   ],
    //   ),
    // );
  }
}