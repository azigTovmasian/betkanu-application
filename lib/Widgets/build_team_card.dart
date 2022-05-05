import 'package:flutter/material.dart';

class BuildTeamCard extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final String title;
  final String subTitle;
  final String description;

  BuildTeamCard({
    Key? key,
    required this.height,
    required this.width,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      width: width * 3 / 7,
      height: height * 3 / 6,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Container(
                height: height * 3 / 16,
                width: width * 3 / 7.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          Container(
            height: height * 3 / 68,
            width: width * 3 / 8,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            height: height * 3 / 68,
            width: width * 3 / 8,
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: 11,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: height * 3 / 26,
            width: width * 3 / 8,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
