import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Model/sub_songs_model.dart';
import 'package:kanu/Widgets/sub_songs_screen_body.dart';

class SubSongsScreen extends StatelessWidget {
  final CardItem item;
  final SubSongsModel pItem;
  const SubSongsScreen({
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
            body: SingleChildScrollView(child: SubSongsScreenBody(pItem: pItem, item: item))),
             ),
         );
  }
}
