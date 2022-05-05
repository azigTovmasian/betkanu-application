import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Widgets/app_bar_widget.dart';
import 'package:kanu/Widgets/build_team_card.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  List teamScreenDataBoard = [];
  CollectionReference collectionRefBoard =
      FirebaseFirestore.instance.collection('team_screen_data_board');

  getDataBoard() async {
    var responsebody = await collectionRefBoard.get();
    responsebody.docs.forEach((element) {
      setState(() {
        teamScreenDataBoard.add(element.data());
      });
    });
  }

  List teamScreenDataCenter = [];
  CollectionReference collectionRefCenter =
      FirebaseFirestore.instance.collection('team_screen_data_center');

  getDataCenter() async {
    var responsebody = await collectionRefCenter.get();
    responsebody.docs.forEach((element) {
      setState(() {
        teamScreenDataCenter.add(element.data());
      });
    });
  }

  List teamScreenDataVolunteer = [];
  CollectionReference collectionRefVolunteer =
      FirebaseFirestore.instance.collection('team_screen_data_volunteer');

  getDataVolunteer() async {
    var responsebody = await collectionRefVolunteer.get();
    responsebody.docs.forEach((element) {
      setState(() {
        teamScreenDataVolunteer.add(element.data());
      });
    });
  }

  @override
  void initState() {
    getDataBoard();
    getDataCenter();
    getDataVolunteer();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBarWidget(title: 'Team'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            Text(
              'BETKANU Board',
              style: TextStyle(
                  color: Colors.orange[300],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: height * 3 / 6,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(30),
                itemBuilder: (context, index) => BuildTeamCard(
                  image: teamScreenDataBoard[index]['image'],
                  title: teamScreenDataBoard[index]['title'],
                  subTitle: teamScreenDataBoard[index]['sub_title'],
                  description: teamScreenDataBoard[index]['description'],
                  height: height,
                  width: width,
                ),
                separatorBuilder: (context, _) => SizedBox(width: 10),
                itemCount: teamScreenDataBoard.length
              ),
            ),
            SizedBox(height: 30),
            Text(
              'BETKANU Center',
              style: TextStyle(
                  color: Colors.orange[300],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: height * 3 / 6,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(30),
                itemBuilder: (context, index) => BuildTeamCard(
                  image: teamScreenDataCenter[index]['image'],
                  title: teamScreenDataCenter[index]['title'],
                  subTitle: teamScreenDataCenter[index]['sub_title'],
                  description: teamScreenDataCenter[index]['description'],
                  height: height,
                  width: width,
                ),
                separatorBuilder: (context, _) => SizedBox(width: 10),
                itemCount: teamScreenDataCenter.length
              ),
            ),
            SizedBox(height: 30),
            Text(
              'BETKANU Volunteer',
              style: TextStyle(
                  color: Colors.orange[300],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: height * 3 / 6,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(30),
                itemBuilder: (context, index) => BuildTeamCard(
                  image: teamScreenDataVolunteer[index]['image'],
                  title: teamScreenDataVolunteer[index]['title'],
                  subTitle: teamScreenDataVolunteer[index]['sub_title'],
                  description: teamScreenDataVolunteer[index]['description'],
                  height: height,
                  width: width,
                ),
                separatorBuilder: (context, _) => SizedBox(width: 10),
                itemCount: teamScreenDataVolunteer.length
              ),
            ),
          ],
        ),
      ),
    );
  }
}
