import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Model/sub_songs_model.dart';
import 'package:kanu/Widgets/build_songs_widget.dart';
import 'package:kanu/data/songs_screen_data.dart';
import 'package:kanu/data/sub_songs_screen_data.dart';

class SongsWidget extends StatefulWidget {
  SongsWidget({Key? key}) : super(key: key);
  

  @override
  State<SongsWidget> createState() => _SongsWidgetState();
}

class _SongsWidgetState extends State<SongsWidget> {
  List songsScreenData = [];
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('songs_screen_data');

  getData() async {
    var responsebody = await collectionRef.get();
    responsebody.docs.forEach((element) {
      setState(() {
        songsScreenData.add(element.data());
      });
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<CardItem> items = SongsScreenData.items;
    SubSongsScreenData.subImagesURL;
    List<SubSongsModel> ssItem =
        SubSongsScreenData.subSongsData(height: height, width: width);

    return Container(
        height: height*0.75,
        width: 400,
        child: ListView.separated(
          padding: EdgeInsets.all(30),
          itemBuilder: (context, index) => BuildSongsWidget(
            image: songsScreenData[index]['image'],
            title: songsScreenData[index]['title'],
            item: items[index],
            pItem: ssItem[index],
          ),
          separatorBuilder: (context, _) => SizedBox(height: 20),
          itemCount: songsScreenData.length,
        ),
      
    );
  }
}
