import 'package:flutter/material.dart';

class PublishingListViewWidget extends StatelessWidget {
  final int subImagesCount;
  final List subImagesURL;
  final double containerHeight;
  final double imageWidth;
  final double imageHeight;

  const PublishingListViewWidget(
      {required this.subImagesCount,
      required this.subImagesURL,
      required this.containerHeight,
      required this.imageWidth,
      required this.imageHeight,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(30),
        itemBuilder: (context, index) => buildSubImage(
          item: subImagesURL[index],
          width: imageWidth,
          height: imageHeight,
        ),
        separatorBuilder: (context, _) => SizedBox(width: 10),
        itemCount: subImagesCount,
      ),
    );
  }

  Widget buildSubImage(
      {required String item, required double height, required double width}) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          image: DecorationImage(
            image: NetworkImage(
              item, 
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
