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

class MedicinePage extends StatefulWidget {
  @override
  _MedicinePageState createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
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
                title: Text('Medicines',
                style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w400)),
                background: Image.asset('images/medicine.jpg', fit: BoxFit.cover)),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            ExpansionTile(
              title: Text('Amytriptyline', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black87),),
              children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.all(30.0),
          title: Text('''
Amitriptyline is included in a group of medications classified as tricyclic antidepressants. Amitriptyline is one of the first successful medications in this class to be developed. It was discovered in the late 1930s before scientists had today’s understanding of the chemistry of the brain. This drug was developed as a way to reduce anxiety. Frequently, people with depression are often very anxious. When amitriptyline was given to patients with anxiety, it also improved the depression. This result prompted further research and the development of newer agents to treat depression. As scientific understanding of the brain progressed, scientists discovered that amitriptyline and related compounds worked on a series of chemicals called neurotransmitters. The antidepressants influenced the production and efficiency of these neurotransmitters.

Subsequent work revealed that one of the neurotransmitters, serotonin, is involved in mood and emotion, pain regulation, and the regulation of the blood vessels in migraine. Another neurotransmitter, norepinephrine, is also involved in pain processing in the brain.

Amitriptyline influences the body’s use of serotonin and norephinephrine thus leading to improvement in depression and several types of chronic pain. It is used to treat chronic tension-type headache as well as migraine headache. Its effectiveness in treating any of these conditions, especially headache, is not related to whether or not the individual has depression.

Although side effects, such as dry mouth, increased appetite and constipation may occur, consultation with the physician may help minimize the likelihood and severity of these effects. It can cause sedation and can be taken at night to help sleep.
          ''', textAlign: TextAlign.left,),
          ),
              ],
            ),
             ExpansionTile(
              title: Text('Beta-Blockers', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black87),),
              children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.all(30.0),
                          title: Text('''
Beta blockers are sometimes used to prevent migraine. They were originally developed to treat high blood pressure and other heart symptoms. But they also reduce the frequency of migraine attacks in 60 to 80 percent of people.

Beta blockers work to relax and open up blood flow in blood vessels. Changes in blood vessels in the brain are thought to cause migraine.

In general these medicines work by blocking chemicals called neurotransmitters in the body from interacting with beta receptors, which sit within blood vessels and other tissues. Beta-blockers are sometimes called beta-adrenergic blocking agents. They block the effect of adrenaline, the body’s natural fight or flight chemical. They also reduce blood pressure and slow the heartbeat.

Preventive medications for migraine should be taken daily, and it’s generally advisable to take them for six to eight weeks before assessing how well they work. It’s also important to taper off these medications when stopping their use and never stop them suddenly.

People with asthma, emphysema, moderate to severe chronic obstructive pulmonary disease (COPD), diabetes, sinus bradycardia (a slow pulse), partial AV block heart block, and low blood pressure should use beta blockers with caution. Those with the circulatory problem, peripheral artery disease are sometimes advised against taking beta blockers.                            
                          ''', textAlign: TextAlign.left,),
          ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}