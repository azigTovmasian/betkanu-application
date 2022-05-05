import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Widgets/app_bar_widget.dart';
import 'package:kanu/Widgets/vertical_gridview_widget.dart';

class PartnersScreen extends StatefulWidget {
  const PartnersScreen({Key? key}) : super(key: key);

  @override
  State<PartnersScreen> createState() => _PartnersScreenState();
}

class _PartnersScreenState extends State<PartnersScreen> {
  List partnersScreenData = [];

  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('partners_screen_data');

  getData() async {
    var responsebody = await collectionRef.get();
    responsebody.docs.forEach((element) {
      setState(() {
        partnersScreenData.add(element.data());
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
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBarWidget(title: 'Partners'),
        body: Container(
          height: height,
          width: width,
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Container(
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: GridView.builder(
                        itemCount: partnersScreenData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1.2,
                        ),
                        itemBuilder: (context, index) => VerticalGridViewWidget(
                              image: partnersScreenData[index]['image'],
                              title: partnersScreenData[index]['title'],
                            )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
