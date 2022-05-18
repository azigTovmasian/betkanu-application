import 'package:flutter/material.dart';

class OurCenterWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  OurCenterWidget({
    required this.image,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 160,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.fill,
                    )),
              ),
              Container(
                width: width * 3 / 7,
                height: height * 3 / 18,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    backgroundColor: Color.fromARGB(255, 16, 36, 60),
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Container(
            width: width * 3 / 7.5,
            height: height * 3 / 12,
            child: Text(
              description,
              style: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
