import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Model/sub_publishing_model.dart';
import 'package:kanu/Widgets/sub_publishing_screen_body.dart';

class SubPublishingScreen extends StatelessWidget {
  final CardItem item;
  final SubPublishingModel pItem;
  const SubPublishingScreen({
    Key? key,
    required this.item,
    required this.pItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return 
         SafeArea(
           child: Container(     
             height: height,
             width: width,
               child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white10,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            body: SingleChildScrollView(child: SubPublishingScreenBody(pItem: pItem, item: item))),
             ),
         );
  }
}
