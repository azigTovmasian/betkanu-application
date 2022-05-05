// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:kanu/Screens/pdf_viewer_screen.dart';
// import 'package:kanu/Widgets/app_bar_widget.dart';
// import 'package:kanu/api.dart/pdf_api.dart';

// class DownloadFromFirebase extends StatefulWidget {
//   const DownloadFromFirebase({Key? key}) : super(key: key);

//   @override
//   State<DownloadFromFirebase> createState() => _DownloadFromFirebaseState();
// }

// class _DownloadFromFirebaseState extends State<DownloadFromFirebase> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarWidget(title: 'Download in different ways'),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(32),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   final url = 'https://www.tutorialkart.com/pdf/flutter.pdf';
//                   final file = await PDFApi.loadNetwork(url);
//                   // we want to display the file we downloaded
//                   openPDF(context, file);
//                 },
//                 child: Text('Network PDF'),
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () async {
//                   final url = 'k.pdf';
//                   final file = await PDFApi.loadFirebase(url);
//                   // we want to display the file we downloaded
//                   //if (file == null) return;
//                   openPDF(context, file);
//                 },
//                 child: Text('Firebase PDF'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void openPDF(BuildContext context, File file) => Navigator.of(context).push(
//         MaterialPageRoute(builder: (context) => PDFViewerScreen(file: file)),
//       );
// }
