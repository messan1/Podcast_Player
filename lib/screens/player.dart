import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Player extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF111729),
        appBar: AppBar(
          backgroundColor: Color(0xFF111729),
          elevation: 0,
          title: Center(
            child: Text("Now Playing"),
          ),
          leading: Icon(
            EvaIcons.arrowBackOutline,
            color: Colors.white,
            size: 30,
          ),
          actions: <Widget>[
            Icon(EvaIcons.moreHorizotnalOutline, color: Colors.white, size: 30),
          ],
        ),
        body: Center(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    height: 300.0,
                    width: 300.0,
                    child: Image.network(
                      "https://media.simplecast.com/podcast/image/6265/1550288890-artwork.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 25.0, bottom: 5.0),
                    child: new Text("React Podcast",
                        style: Theme.of(context).textTheme.title),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: new Text("By Chain Tastique",
                        style: Theme.of(context).textTheme.body2),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 25.0, bottom: 35),
                    child: new Text(
                      "Transcendence and the Future of",
                      style: Theme.of(context).textTheme.body1,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Text("09:01"),
                        Expanded(
                          child: Slider(
                            value: 25.0,
                            max: 100,
                            min: 0,
                            activeColor: Colors.white,
                            inactiveColor: Colors.grey,
                            onChanged: (e) {
                              print(e);
                            },
                          ),
                        ),
                        new Text("09:01"),
                      ],
                    ),
                  ),
                  
                  Container(
                    padding: const EdgeInsets.only(top: 35.0),
                    decoration: BoxDecoration(),
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          EvaIcons.arrowLeftOutline,
                          color: Colors.white,
                          size: 60,
                        ),
                        Icon(
                          EvaIcons.pauseCircleOutline,
                          color: Colors.white,
                          size: 60,
                        ),
                        Icon(
                          EvaIcons.arrowRightOutline,
                          color: Colors.white,
                          size: 60,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
        ));
  }
}
