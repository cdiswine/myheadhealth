import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

///Videos///

final backVideoPlayerController = VideoPlayerController.network(
    'https:\/\/r1---sn-t0a7sn7d.googlevideo.com\/videoplayback?expire=1550227589&ms=au%2Conr&signature=74E15A1F24C69572A6E0D928494DAC63A44D3ACA.2CE32F62E8A3A7D04E89A12DE84CB849C52C9C81&id=o-APBiW1mI54QWFThcLCk-lWayCY_E7hJTXl3dMOfU3lwi&mv=u&mt=1550205397&fvip=1&dur=390.489&pl=20&mn=sn-t0a7sn7d%2Csn-vgqsrned&mm=31%2C26&source=youtube&requiressl=yes&mime=video%2Fmp4&ip=54.82.82.106&ei=JURmXLaYMcSjhwbdnLaYBA&itag=22&ratebypass=yes&ipbits=0&lmt=1546436688976044&sparams=dur%2Cei%2Cid%2Cip%2Cipbits%2Citag%2Clmt%2Cmime%2Cmm%2Cmn%2Cms%2Cmv%2Cpl%2Cratebypass%2Crequiressl%2Csource%2Cexpire&txp=5535432&beids=9466586&key=yt6');

final neckVideoPlayerController = VideoPlayerController.network(
  'https:\/\/r4---sn-t0a7sn7d.googlevideo.com\/videoplayback?signature=4BB74B0462027A659C953B1227D255D013E5CBD3.BDA54B7F6E5CD27ACFCC0E38C79FDB0CF1F6E53A&source=youtube&mime=video%2Fmp4&clen=13753109&requiressl=yes&mn=sn-t0a7sn7d%2Csn-vgqsknes&mm=31%2C26&gir=yes&ms=au%2Conr&itag=18&ei=yENmXJaRNY6V8wSJ_7yAAw&pl=20&mv=u&mt=1550205397&sparams=clen%2Cdur%2Cei%2Cgir%2Cid%2Cip%2Cipbits%2Citag%2Clmt%2Cmime%2Cmm%2Cmn%2Cms%2Cmv%2Cpl%2Cratebypass%2Crequiressl%2Csource%2Cexpire&ip=54.82.82.106&txp=5531432&id=o-AEMD_ZgXwRdxULeFKQvuyM6uCdtgi2__scVaubjRcObH&fvip=4&ratebypass=yes&expire=1550227496&ipbits=0&dur=310.009&key=yt6&lmt=1542634684649709');

final backChewieController = ChewieController(
  videoPlayerController: backVideoPlayerController,
  aspectRatio: 3 / 2,
  autoPlay: false,
  looping: false,
);

final neckChewieController = ChewieController(
  videoPlayerController: neckVideoPlayerController,
  aspectRatio: 3 / 2,
  autoPlay: false,
  looping: false,
);


final backPlayerWidget = Chewie(
  controller: backChewieController,
);
final neckPlayerWidget = Chewie(
  controller: neckChewieController,
);

///Stretch Page///

class StretchPage extends StatefulWidget {
  @override
  _StretchPageState createState() => _StretchPageState();
}

class _StretchPageState extends State<StretchPage> {
  @override
void dispose() {
  backVideoPlayerController.dispose();
  backChewieController.dispose();
  super.dispose();
}
void neckDispose() {
  neckVideoPlayerController.dispose();
  neckChewieController.dispose();
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
                title: Text('Stretches',
                style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w400)),
                background: Image.asset('images/stretch.jpg', fit: BoxFit.cover)),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/1.png'))),
                child: neckPlayerWidget),
            ),
            Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('3 min Neck Stretch', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black87),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: Text('Performing range of motion exercises for your neck will help to lessen muscle stiffness, help you regain your full mobility and prevent chronic pain.', 
          style: TextStyle(fontSize: 14.0, color: Colors.black45),),
        ),
            Padding(
          padding: const EdgeInsets.all(20.0),
          child:  Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/2.png'))),
            child: backPlayerWidget),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('7 min Low Back Stretch', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black87),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: Text('Stiff muscles that help stabilize your spine are a common source of pain. This video will guide you through a low back and core stretching routine.', 
          style: TextStyle(fontSize: 14.0, color: Colors.black45),),
        ), 
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Stretch'),
    //     backgroundColor: Colors.grey[800],
    //   ),
    //   body: ListView(
    //   children: <Widget>[
    //     Image.asset('images/stretch.jpg', fit: BoxFit.cover),
    //     Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Container(
    //         decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1499728603263-13726abce5fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'))),
    //         child: neckPlayerWidget),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20.0),
    //       child: Text('3 min Neck Stretch', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black87),),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
    //       child: Text('Performing range of motion exercises for your neck will help to lessen muscle stiffness, help you regain your full mobility and prevent chronic pain.', 
    //       style: TextStyle(fontSize: 14.0, color: Colors.black45),),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child:  Container(
    //         decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1499728603263-13726abce5fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'))),
    //         child: backPlayerWidget),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20.0),
    //       child: Text('7 min Low Back Stretch', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black87),),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
    //       child: Text('Stiff muscles that help stabilize your spine are a common source of pain. This video will guide you through a low back and core stretching routine.', 
    //       style: TextStyle(fontSize: 14.0, color: Colors.black45),),
    //     ), 
    //   ],
    //   ),
    // );
  }
}
