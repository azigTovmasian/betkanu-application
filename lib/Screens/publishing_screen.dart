import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Model/sub_publishing_model.dart';
import 'package:kanu/Widgets/build_publishing_widget.dart';
import 'package:kanu/data/publishing_screen_data.dart';
import 'package:kanu/data/sub_publishing_screen_data.dart';
import '../Model/card_item.dart';

class PublishingScreen extends StatefulWidget {
  const PublishingScreen({Key? key}) : super(key: key);

  @override
  State<PublishingScreen> createState() => _PublishingScreenState();
}

class _PublishingScreenState extends State<PublishingScreen> {
   List publishingScreenData = [];

  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('publishing_screen_data');

  getData() async {
    var responsebody = await collectionRef.get();
    responsebody.docs.forEach((element) {
      setState(() {
        publishingScreenData.add(element.data());
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

    List<CardItem> items = PublishingScreenData.items;

    SubPublishingScreenData.subImagesURL0;
    SubPublishingScreenData.subImagesURL1;
    SubPublishingScreenData.subImagesURL2;
    SubPublishingScreenData.subImagesURL3;
    SubPublishingScreenData.subImagesURL4;

    List<SubPublishingModel> pItem =
        SubPublishingScreenData.subPublishingData(height: height, width: width);

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 253, 249),
        body: Container(
          height: 550,
          child: ListView.separated(
            padding: EdgeInsets.all(30),
            itemBuilder: (context, index) => BuildPublishingWidget(
              image: publishingScreenData[index]['image'],
              title: publishingScreenData[index]['title'],
              item: items[index], pItem: pItem[index],
            ),
            separatorBuilder: (context, _) => SizedBox(height: 20),
            itemCount: publishingScreenData.length,
          ),
        ));
  }
}

