import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Model/sub_publishing_model.dart';
import 'package:kanu/Screens/pdf_viewer_screen.dart';
import 'package:kanu/api.dart/pdf_api.dart';

class SubPublishingScreenBody extends StatelessWidget {
  final SubPublishingModel pItem;
  final CardItem item;

  const SubPublishingScreenBody({
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
                  image: NetworkImage(item.imageURL), fit: BoxFit.fill)),
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
              Text(pItem.pFeatures,
                  style: (TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ))),
              SizedBox(height: 15),
              Text(pItem.pCredits,
                  style: (TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: pItem.pSubImages,
        ),
        ElevatedButton(
          onPressed: () async {
            final url = pdfURL(item.id);
            final file = await PDFApi.loadFirebase(url);
            openPDF(context, file);
          },
          child: Text(
            'Download',
            style: TextStyle(fontSize: 26),
          ),
        ),
        SizedBox(height: 70),
      ],
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerScreen(file: file)),
      );
  String pdfURL(String id) {
    late String pdf;
    switch (id) {
      case '1':
        pdf = '1.pdf';
        break;
      case '2':
        pdf = '2.pdf';
        break;
      case '3':
        pdf = '3.pdf';
        break;
      case '4':
        pdf = '4.pdf';
        break;
      case '5':
        pdf = '5.pdf';
        break;        
      default:
      pdf = 'OOP.pdf';
        break;
    }
    return pdf;
  }
}
