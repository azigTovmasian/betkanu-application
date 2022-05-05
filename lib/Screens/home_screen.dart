import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Widgets/build_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List homeScreenData = [];
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('home_screen_data');

  getData() async {
    QuerySnapshot responsebody = await collectionRef.get();
    responsebody.docs.forEach((element) {
      setState(() {
        homeScreenData.add(element.data());
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
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 253, 249),
      body: Container(
          child: ListView.builder(
              itemCount: homeScreenData.length,
              itemBuilder: (context, index) {
                return BuildHomeWidget(
                  image: homeScreenData[index]['image'],
                  title: homeScreenData[index]['title'],
                );
              }),
        ),
      
    );
  }
}
