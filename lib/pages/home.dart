import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';


MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['flutterio', 'beautiful apps'],
  contentUrl: 'https://flutter.io',
//  birthday: DateTime.now(),
  childDirected: true,
//  designedForFamilies: false,
 // gender: MobileAdGender.male, // or MobileAdGender.female, MobileAdGender.unknown
  testDevices: <String>['512B95F7F4B43AC6309729BA89D817CC'], // Android emulators are considered test devices
);

BannerAd myBanner = BannerAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: 'ca-app-pub-1474854637192516/1027946689',
  size: AdSize.banner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);
/*
InterstitialAd myInterstitial = InterstitialAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: InterstitialAd.testAdUnitId,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("InterstitialAd event is $event");
  },
);

*/


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-1474854637192516~1528841267');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    myBanner
  // typically this happens well before the ad is shown
  ..load()
  ..show(
    // Positions the banner ad 60 pixels from the bottom of the screen
    anchorOffset: 0,
    // Positions the banner ad 10 pixels from the center of the screen to the right
    horizontalCenterOffset: 0.0,
    // Banner Position
    anchorType: AnchorType.bottom,
  );

    return Scaffold(
      appBar: AppBar(
        title: Text("FUN CALCULATOR"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,0,0,50),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                height: 180,
                child: GradientCard(
                  gradient: LinearGradient(colors: [Colors.brown, Colors.brown]),
                  elevation: 10,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.pushNamed(context, '/love');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 8),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 25),
                              Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                                size: 50,
                              ),
                              SizedBox(width: 25),
                              Text(
                                "CALCULATE LOVE",
                                style:
                                    TextStyle(fontSize: 28, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 180,
                child: GradientCard(
                  gradient: LinearGradient(colors: [Colors.brown, Colors.brown]),
                  elevation: 10,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.pushNamed(context, '/age');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 8),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 25),
                              Icon(
                                Icons.assignment_ind,
                                color: Colors.purpleAccent,
                                size: 50,
                              ),
                              SizedBox(width: 25),
                              Text(
                                "CALCULATE AGE",
                                style:
                                    TextStyle(fontSize: 28, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 180,
                child: GradientCard(
                  gradient: LinearGradient(colors: [Colors.brown, Colors.brown]),
                  elevation: 10,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.pushNamed(context, '/friendship');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 8),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 25),
                              Icon(
                                Icons.thumbs_up_down,
                                color: Colors.lightBlueAccent,
                                size: 50,
                              ),
                              SizedBox(width: 25),
                              Text(
                                "CALC FRIENDSHIP",
                                style:
                                    TextStyle(fontSize: 28, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 180,
                child: GradientCard(
                  gradient: LinearGradient(colors: [Colors.brown, Colors.brown]),
                  elevation: 10,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.pushNamed(context, '/hateness');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 8),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 25),
                              Icon(
                                Icons.face,
                                color: Colors.orangeAccent,
                                size: 50,
                              ),
                              SizedBox(width: 25),
                              Text(
                                "CALC HATENESS",
                                style:
                                    TextStyle(fontSize: 28, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                
              ),
              
            ],
          ),
          
        ),
      ),
      
    );
  }
}
