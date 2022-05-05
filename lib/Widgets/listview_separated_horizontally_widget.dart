import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';

class ListViewSeparatedHorizontallyWidget extends StatelessWidget {
  final int itemCount;
  final List<CardItem> items;
  final double containerHeight;
  const ListViewSeparatedHorizontallyWidget(
      {required this.itemCount,
      required this.items,
      required this.containerHeight,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(30),
        itemBuilder: (context, index) => buildCard(item: items[index]),
        separatorBuilder: (context, _) => SizedBox(width: 10),
        itemCount: itemCount,
      ),
    );
  }

  Widget buildCard({required CardItem item}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      width: 150,
      height: 100,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Material(
                child: Ink.image(
                  image: //Image.asset(
                      NetworkImage(item.imageURL),
                  fit: BoxFit.fill,
                  child: InkWell(onTap: () {}),
                ),
              ),
            ),
          ),
          // ),
          SizedBox(height: 6),
          Text(
            item.imageTitle,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 25, 55, 83),
            ),
          ),
          SizedBox(height: 7),
        ],
      ),
    );
  }
}
