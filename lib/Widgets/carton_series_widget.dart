import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Widgets/listview_separated_horizontally_widget.dart';


class CartonSeriesWidget extends StatefulWidget {
  const CartonSeriesWidget({Key? key}) : super(key: key);

  @override
  State<CartonSeriesWidget> createState() => _CartonSeriesWidgetState();
}
//images of songs intead of carton cuz it's just for testing & practising
class _CartonSeriesWidgetState extends State<CartonSeriesWidget> {
  final List<CardItem> items = [
    CardItem(
        imageURL:
            'https://betkanu.com/content/img/products/banners/TheSunSet_1920_700.jpg',
        imageTitle: 'The Sun Set Song',id:'1'),
    CardItem(
        imageURL:
            'https://betkanu.com/content/img/products/banners/wethreekings_1920_700.jpg',
        imageTitle: 'We Three Kings Song',id:'2'),
    CardItem(
        imageURL:
            'https://betkanu.com/content/img/products/banners/openshutthem_1920_700.jpg',
        imageTitle: 'Open Shut Them Song',id:'3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(
            'Nino & Mia :',
            style: TextStyle(
                color: Colors.orange[400],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: ListViewSeparatedHorizontallyWidget(
            items: items,
            itemCount: items.length,
            containerHeight: 200,
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Alphabet series :',
            style: TextStyle(
                color: Colors.orange[400],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: ListViewSeparatedHorizontallyWidget(
            items: items,
            itemCount: items.length,
            containerHeight: 200,
          ),
        ),
      ],
    );
  }
}
