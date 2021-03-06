import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Model/sub_publishing_model.dart';
import 'package:kanu/Screens/sub_publishing_screen.dart';

class BuildPublishingWidget extends StatelessWidget {
  const BuildPublishingWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.item,
    required this.pItem,
  }) : super(key: key);
  final String title;
  final String image;
  final CardItem item;
  final SubPublishingModel pItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 25, 55, 83),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      width: 300,
      height: 130,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Material(
                child: Ink.image(
                  image: 
                      NetworkImage(image),
                  fit: BoxFit.fill,
                  child: InkWell(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SubPublishingScreen(
                              item: item,
                              pItem: pItem,
                            )));
                  }),
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 250, 221, 142),
            ),
          ),
          SizedBox(height: 7),
        ],
      ),
    );
  }
}
