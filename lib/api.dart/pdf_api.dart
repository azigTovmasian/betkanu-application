import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class PDFApi {
  // we create a method to load from network
  static Future<File> loadNetwork(String stringURL) async {
    final Uri url = Uri.parse(stringURL);
    final response = await http.get(url);
    final bytes = response.bodyBytes;

    return _storeFile(url.toString(), bytes);
  }

  // we create a method to load from firebase
  static Future<File> loadFirebase(String url) async {
    // this is refrencing our file in firebase
    final refFDP = FirebaseStorage.instance.ref().child(url);
    // we want to download our file from firebase
    final bytes = await refFDP.getData();
    // we want to converet this pdf bytes to file
    return _storeFile(url, bytes!);
  }

  // we create this method to store our file which we downloaded
  static Future<File> _storeFile(String url, List<int> bytes) async {
    // from the url we can access our file name
    final filename = basename(url.toString());
    // we can access our application directory where we can store our file inside
    final dir = await getApplicationDocumentsDirectory();
    // and based on this directory and also our file name we want to create here
    // a path where we want to store our file
    final file = File('${dir.path}/$filename');
    // and here we store the bytes which we have recieved inside our file
    await file.writeAsBytes(bytes, flush: true);
    // and finally we return tthis file
    return file;
  }
}
