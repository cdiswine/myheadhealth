import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

///Videos///

final backVideoPlayerController = VideoPlayerController.network(
    'https:\/\/r1---sn-t0a7sn7d.googlevideo.com\/videoplayback?sparams=dur%2Cei%2Cid%2Cinitcwndbps%2Cip%2Cipbits%2Citag%2Clmt%2Cmime%2Cmm%2Cmn%2Cms%2Cmv%2Cpl%2Cratebypass%2Crequiressl%2Csource%2Cexpire&requiressl=yes&signature=9E42286A6099E924E8F1F50721DD665E9EAD20BB.3361E345BDD78565C5E5967BAAF8B0BA2E7F1BED&itag=22&initcwndbps=2361250&fvip=1&txp=5535432&mime=video%2Fmp4&source=youtube&key=yt6&ei=q51cXOqXBa648gT2-rnICw&expire=1549595147&id=o-ALQHISvAIwAI6U3o6VM2vC2IRsfOEz6R3DqsNHE9B-jM&dur=390.489&lmt=1546436688976044&pl=15&ms=au%2Conr&mt=1549573428&mv=m&mm=31%2C26&ip=3.91.196.104&mn=sn-t0a7sn7d%2Csn-vgqsrned&ratebypass=yes&ipbits=0');

final neckVideoPlayerController = VideoPlayerController.network(
  'https:\/\/r4---sn-t0a7sn7d.googlevideo.com\/videoplayback?&initcwndbps=4155000&ratebypass=yes&signature=8DDDA017516EA151E15B9B84DA34AE8BADD6FC4A.CEA9E07148F2348FE7FEB289DD2E4BD897B3EEDE&requiressl=yes&pl=15&source=youtube&mime=video%2Fmp4&itag=18&expire=1549601210&sparams=clen%2Cdur%2Cei%2Cgir%2Cid%2Cinitcwndbps%2Cip%2Cipbits%2Citag%2Clmt%2Cmime%2Cmm%2Cmn%2Cms%2Cmv%2Cpl%2Cratebypass%2Crequiressl%2Csource%2Cexpire&fvip=4&mn=sn-t0a7sn7d%2Csn-vgqsrnes&mm=31%2C26&dur=310.009&gir=yes&lmt=1542634684649709&txp=5531432&clen=13753109&mv=m&mt=1549579526&ms=au%2Conr&key=yt6&ip=3.91.196.104&ipbits=0&ei=WrVcXP3NK4rohgajqongDQ&id=o-AMACqEMwAoktgvF8ovVPfyUscg2jarAbOh2xluv2ZMUt');

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

class NutritionPage extends StatefulWidget {
  @override
  _NutritionPageState createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {
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
                title: Text('Eating Well',
                style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w400)),
                background: Image.asset('images/nutrition.jpg', fit: BoxFit.cover)),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
        ExpansionTile(
          title: Text('Nutritional Tips', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black87),),
          children: <Widget>[
            ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Eat small meals every three to four hours.', 
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
            child: Text('Keep small baggies of healthy snacks with you during the day to boost your energy, such as nuts, trail mix, apples, cheese, hard-boiled eggs, and energy bars.', 
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
            child: Text('Eat moderately. Do not overeat as it can cause you to feel sleepy.', 
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
            child: Text('Eat by the clock. If your brain/body signals are not working well, set a timer, watch alarm or a mobile phone to alert you that it’s time to eat.', 
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
            child: Text('Since weight gain is common following brain injury, this is another reason to stick to a healthy diet.', 
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
          title: Text('Multivitamins', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black87),),
          children: <Widget>[
            ListTile(
          leading: Icon(Icons.turned_in),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Omega-3 fatty acids counteract free radicals that cause oxidative damage to brain cells and may help improve nerve signal transmission at synapses.', 
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
            child: Text('Probiotics is a beneficial bacteria that helps maintain a healthy intestine and aides in digestion.', 
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
            child: Text('Antioxidants which include vitamins C, E, and beta carotene counteract oxidative damage caused by certain foods, and the stress caused by brain injury.', 
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
            child: Text('Coenzyme Q10 is a natural antioxidant that is necessary for the basic functioning of cells.', 
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
            child: Text('Magnesium oxide is most frequently used to prevent migraines. You can take it in pill form, with a general recommended dosage of about 400 to 500 milligrams a day.', 
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
            child: Text('Acetyl L-carnitine plays a key role in fatty acid oxidation and is used to improve memory.', 
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
            child: Text('B vitamins boost metabolism and effect brain and nervous system functioning.', 
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

// class NutritionPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('Eating Well'),
//     //     backgroundColor: Colors.black,
//     //     actions: <Widget>[
//     //         new IconButton(icon: const Icon(Icons.home), onPressed: () {Navigator.pop(context);}),
//     //         new IconButton(icon: const Icon(Icons.check), onPressed: () {Navigator.pushNamed(context, '/SecondPage');}),
//     //       ],
//     //   ),
//     //         body: Image.asset('images/nutrition.jpg', fit: BoxFit.cover)
//     //         // Navigate to the second screen using a named route
//     //         //Navigator.pushNamed(context, '/ActivityPage')
//     //       );
        }
}