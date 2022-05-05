import 'package:flutter/material.dart';

class BuildHomeWidget extends StatelessWidget {
  const BuildHomeWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: 35),
        Material(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderRadius: BorderRadius.circular(20),
          elevation: 10,
          color: Colors.orange[300],
          child: InkWell(
            splashColor: Colors.orange[300],
            onTap: () {},
            child: Ink.image(
              image: NetworkImage(image),
              width: 190,
              height: 130,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:height*width*0.00005, // fontSize:14
                  backgroundColor: Colors.orange[300],
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
