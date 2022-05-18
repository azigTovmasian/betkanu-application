import 'package:flutter/material.dart';
import 'package:kanu/Model/card_item.dart';
import 'package:kanu/Model/sub_publishing_model.dart';
import 'package:store_redirect/store_redirect.dart';

class SubSoftwareScreenBody extends StatelessWidget {
  final SubPublishingModel pItem;
  final CardItem item;

  const SubSoftwareScreenBody({
    Key? key,
    required this.pItem,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
  //  double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          height: 150,
          width: width*0.95,
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
          // directing to the same app in Play Store 
          onPressed: () {
            StoreRedirect.redirect(
              androidAppId: androidAppId(item.id),
              iOSAppId: iOSAppId(item.id),
            );
          },
          child: Text(
            'Go to Play Store',
            style: TextStyle(fontSize: 26),
          ),
        ),
        SizedBox(height: 70),
      ],
    );
  }
  String androidAppId(String id){
     String? androidId;
    switch (id) {
      case '1':
        androidId='com.BETKANU.BK_READER';
        break;
      case '2':
        androidId='com.Kanusoft.BetKanu.KanuGuess';  
        break;  
      case '3':
        androidId='com.suryo.radiokifo';  
        break;  
      default:
      androidId='com.BETKANU.BK_READER';
      break;
    }
      return androidId;
  }
  String iOSAppId(String id){
    late String iOSId;
    switch (id) {
      case '1':
        iOSId='1452612542';
        break;
      case '2':
        iOSId='1299765596';  
        break;  
      case '3':
       iOSId='1230356699';  
        break;  
       default:
       iOSId='1452612542';
       break;
      
    }
      return iOSId;
  }
}
