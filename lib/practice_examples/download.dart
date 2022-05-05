// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:kanu/Widgets/app_bar_widget.dart';
// import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';

// class DownloadFile extends StatelessWidget {
//   const DownloadFile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarWidget(title: 'Download'),
//       body: Container(
//         padding: EdgeInsets.all(100),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () => openFile(url:'https://www.tutorialkart.com/pdf/flutter.pdf',fileName: 'flutter.pdf'),
//               child: Text('Download',style: TextStyle(fontSize: 34),),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Future openFile({required String url, String? fileName}) async {
//     final file = await downloadFile(url, fileName!);
//     if (file == null) return;
//     print('path: ${file.path}');

//     OpenFile.open(file.path);
//   }

//   //download file into private folder not visible to user
//   Future<File?> downloadFile(String url, String? name) async {
//     final appStorage = await getApplicationDocumentsDirectory();
//     final file = File('${appStorage.path}/$name');

//     try {
//       final response = await Dio().get(
//         url,
//         options: Options(
//           responseType: ResponseType.bytes,
//           followRedirects: false,
//           receiveTimeout: 0,
//         ),
//       );
//       final raf = file.openSync(mode: FileMode.write);
//       raf.writeFromSync(response.data);
//       await raf.close();

//       return file;
//     } catch (e) {
//       return null;
//     }
//   }
// }
