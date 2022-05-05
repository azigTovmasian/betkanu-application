import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Model/sub_publishing_model.dart';
import 'package:kanu/Widgets/build_software_widget.dart';
import 'package:kanu/data/software_screen_data.dart';
import 'package:kanu/data/sub_software_screen_data.dart';

class SoftwareScreen extends StatefulWidget {
  const SoftwareScreen({Key? key}) : super(key: key);

  @override
  State<SoftwareScreen> createState() => _SoftwareScreenState();
}

class _SoftwareScreenState extends State<SoftwareScreen> {
  List softwareScreenData = [];
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('software_screen_data');

  getData() async {
    var responsebody = await collectionRef.get();
    responsebody.docs.forEach((element) {
      setState(() {
        softwareScreenData.add(element.data());
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

    List<CardItem> items = SoftwareScreenData.items;
    SubSoftwareScreenData.subImagesURL0;
    SubSoftwareScreenData.subImagesURL1;
    SubSoftwareScreenData.subImagesURL2;

    List<SubPublishingModel> sItem =
        SubSoftwareScreenData.subSoftwareData(height: height, width: width);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 253, 249),
      body: Container(
          height: 550,
          child: ListView.separated(
            padding: EdgeInsets.all(30),
            itemBuilder: (context, index) => BuildSoftwareWidget(
              image: softwareScreenData[index]['image'],
              title: softwareScreenData[index]['title'],
              item: items[index],
               pItem: sItem[index],
            ),
            separatorBuilder: (context, _) => SizedBox(height: 20),
            itemCount: softwareScreenData.length,
          ),
        ),
    );
  }
}
