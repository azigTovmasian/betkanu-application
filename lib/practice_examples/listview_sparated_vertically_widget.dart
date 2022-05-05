
// import 'package:flutter/material.dart';
// import 'package:kanu/Model/card_item.dart';

// class ListViewSeparatedVerticallyWidget extends StatelessWidget {
//   final int itemCount;
//   final List<CardItem> items;
//   final double containerHeight;
//   const ListViewSeparatedVerticallyWidget(
//       {required this.itemCount,
//       required this.items,
//       required this.containerHeight,
//       Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: containerHeight,
//       child: ListView.separated(
//         padding: EdgeInsets.all(30),
//         itemBuilder: (context, index) => BuildCard(
//           item: items[index],
//         ),
//         separatorBuilder: (context, _) => SizedBox(height: 20),
//         itemCount: itemCount,
//       ),
//     );
//   }
// }

// class BuildCard extends StatelessWidget {
//   const BuildCard({
//     Key? key,
//     required this.item,
//   }) : super(key: key);

//   final CardItem item;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//             color: Color.fromARGB(255, 25, 55, 83),
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(15),
//               topRight: Radius.circular(15),
//             )),
//         width: 300,
//         height: 130,
//         child: Column(
//           children: [
//             Expanded(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     topRight: Radius.circular(15)),
//                 child: Material(
//                   child: Ink.image(
//                     image: //Image.asset(
//                         NetworkImage(item.imageURL),
//                     fit: BoxFit.fill,
//                     child: InkWell(onTap: () {}),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 6),
//             Text(
//               item.imageTitle,
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 250, 221, 142),
//               ),
//             ),
//             SizedBox(height: 7),
//           ],
        
//       ),
//     );
//   }
// }
