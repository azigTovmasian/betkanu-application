
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Widgets/app_bar_widget.dart';
import 'package:kanu/Widgets/our_center_Widget.dart';

class OurCenterScreen extends StatefulWidget {
   OurCenterScreen({Key? key}) : super(key: key);

  @override
  State<OurCenterScreen> createState() => _OurCenterScreenState();
}

class _OurCenterScreenState extends State<OurCenterScreen> {
  List ourCenterScreenData = [];

  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('our_center_screen_data');

  getData() async {
    var responsebody = await collectionRef.get();
    responsebody.docs.forEach((element) {
      setState(() {
        ourCenterScreenData.add(element.data());
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
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarWidget(title: 'Our Center'),
      body: Container(
      height: height*0.9,
      child: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => OurCenterWidget(
          image: ourCenterScreenData[index]['image'],
          title: ourCenterScreenData[index]['title'],
          description: ourCenterScreenData[index]['description'],
        ),
        separatorBuilder: (context, _) => SizedBox(height: 20),
        itemCount: ourCenterScreenData.length,
      ),
    ));
  

  }
}
