import 'package:flutter/material.dart';
import 'package:kanu/Screens/songs_videos_screen.dart';
import 'package:kanu/data/sub_songs_screen_data.dart';

class SubSongsImagesListViewWidget extends StatelessWidget {
  final int subImagesCount;
  final List subImagesURL;
  final double containerHeight;
  final double imageWidth;
  final double imageHeight;

  const SubSongsImagesListViewWidget(
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
          context: context,
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
      {required BuildContext context,
      required String item,
      required double height,
      required double width}) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: Center(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
          ),
          child: Column(
           children: [
             Material(
               child: InkWell(
                      child: Ink.image(
                        image: Image.asset(item).image,
                        height: 110,
                        width: 130,
                        fit: BoxFit.fill,
                        
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SongsVideosScreen(item: item,)));
                      }),
             ),
              
               Text(
                      (item==SubSongsScreenData.subImagesURL[0])?'Western':'Eastern',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:20, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ],
         ),
        ),
      ),
    );
  }
}
