import 'package:flutter/material.dart';
//import 'package:kanu/data/sub_songs_screen_data.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SongsVideosScreen extends StatefulWidget {
  final String item;

  const SongsVideosScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<SongsVideosScreen> createState() => _SongsVideosScreenState();
}

class _SongsVideosScreenState extends State<SongsVideosScreen> {
  late YoutubePlayerController controller;

  String url = 'https://youtu.be/7w9Y0yZjGTc';
  //( == SubSongsScreenData.subImagesURL[0])
  // // ? 'https://youtu.be/UwXD1X4dZW4'
  // : 'https://youtu.be/7w9Y0yZjGTc';

  //'https://youtu.be/UwXD1X4dZW4'; //western
//'https://youtu.be/7w9Y0yZjGTc'; //eastern
  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
        hideControls: false,
      ),
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white10,
                elevation: 0,
                leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {
                      return Navigator.pop(context);
                    }),
              ),
              body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    player,
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        controller.metadata.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 16, 38, 60),
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
            ));
  }
}
