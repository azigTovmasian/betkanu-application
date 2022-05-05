import 'package:flutter/material.dart';

class VerticalGridViewWidget extends StatelessWidget {
  final String image;
  final String title;
  const VerticalGridViewWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height:20),
          Image.network(
            image,
          ),
          SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
