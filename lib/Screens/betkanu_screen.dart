import 'package:flutter/material.dart';
import 'package:kanu/Widgets/app_bar_widget.dart';
import 'package:kanu/localization/set_localization.dart';

class BetKanuScreen extends StatefulWidget {
  @override
  State<BetKanuScreen> createState() => _BetKanuScreenState();
}

class _BetKanuScreenState extends State<BetKanuScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: '${getLang(context,"betkanu")}'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            textContainer(
                '${getLang(context,"betkanu_text1")}',
                '${getLang(context,"betkanu_description1")}'),
            textContainer(
                '${getLang(context,"betkanu_text2")}',
                '${getLang(context,"betkanu_description2")}'),
            textContainer(
                '${getLang(context,"betkanu_text3")}',
                '${getLang(context,"betkanu_description3")}'),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.network(
                  'https://betkanu.com/content/img/home/home1.jpg'),
            ),
          ],
        ),
      ),
    );
  }

  Widget textContainer(String text, String description) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          Text(
            text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.orange[400],
            ),
          ),
          SizedBox(height: 7),
          Text(
            description,
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 25, 55, 83),
            ),
          )
        ],
      ),
    );
  }
}
