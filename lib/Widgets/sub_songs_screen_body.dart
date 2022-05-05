import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Model/sub_publishing_model.dart';

class SubSongsScreenBody extends StatelessWidget {
  final SubPublishingModel pItem;
  final CardItem item;

  const SubSongsScreenBody({
    Key? key,
    required this.pItem,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          height: height * 1 / 6,
          width: width * 3 / 3.5,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(item.imageURL), fit: BoxFit.fill),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                item.imageTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.orange[300],
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text(
                pItem.pDescription,
                style: (TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
              ),
              SizedBox(height: 15),
              Text(
                pItem.pFeatures,
                style: (TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
              ),
              SizedBox(height: 15),
              Text(
                pItem.pCredits,
                style: (TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: pItem.pSubImages,
        ),
      ],
    );
  }
}
