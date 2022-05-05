import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Widgets/app_bar_widget.dart';
import 'package:kanu/Widgets/vertical_gridview_widget.dart';

class ContributorsScreen extends StatefulWidget {
  const ContributorsScreen({Key? key}) : super(key: key);

  @override
  State<ContributorsScreen> createState() => _ContributorsScreenState();
}

class _ContributorsScreenState extends State<ContributorsScreen> {
  List contributorsScreenData = [];

  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('contributors_screen_data');

  getData() async {
    var responsebody = await collectionRef.get();
    responsebody.docs.forEach((element) {
      setState(() {
        contributorsScreenData.add(element.data());
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
        appBar: AppBarWidget(title: 'Contributers'),
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
                        itemCount: contributorsScreenData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1.2,
                        ),
                        itemBuilder: (context, index) => VerticalGridViewWidget(
                              image: contributorsScreenData[index]['image'],
                              title: contributorsScreenData[index]['title'],
                            )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
