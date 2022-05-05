// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:kanu/Widgets/app_bar_widget.dart';
// import 'package:path_provider/path_provider.dart';

// class DownloadFromFirebaseStorage extends StatefulWidget {
//   const DownloadFromFirebaseStorage({Key? key}) : super(key: key);

//   @override
//   State<DownloadFromFirebaseStorage> createState() =>
//       _DownloadFromFirebaseStorageState();
// }

// class _DownloadFromFirebaseStorageState
//     extends State<DownloadFromFirebaseStorage> {
//   late Future<ListResult> futureFiles;
//   @override
//   void initState() {
//     super.initState();
//     futureFiles = FirebaseStorage.instance.ref('/files').listAll();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarWidget(title: 'download from storage'),
//       body: FutureBuilder(
//           future: futureFiles,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               final files = snapshot.data!.items;
//               return ListView.builder(
//                 itemCount: files.length,
//                 itemBuilder: (context, index) {
//                   final file = files[index];
//                   return ListTile(
//                     title: Text(file.name),
//                     trailing: IconButton(
//                       icon: const Icon(
//                         Icons.download,
//                         color: Colors.black,
//                       ),
//                       onPressed: () => downloadFile(file),
//                     ),
//                   );
//                 },
//               );
//             } else if (snapshot.hasError) {
//               return const Center(
//                 child: Text('Error!'),
//               );
//             } else {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           }),
//     );
//   }

//   Future downloadFile(Reference ref) async {
//     // // it is not visible to the user , the app only can see it when we program
//     // // it this way
//     // final dir = await getApplicationDocumentsDirectory();
//     // final file = File('${dir.path}/${ref.name}');
//     // await ref.writeToFile(file);
//     final url = await ref.getDownloadURL();
//     // this is visible to the user inside the galleray
//     final tempdir = await getTemporaryDirectory();
//     final path = '${tempdir.path}/${ref.name}';
//     await Dio().download(url, path);
//     // to display that file is downloaded after saving it
//     ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text('Downloaded ${ref.name}')));
//   }
// }
