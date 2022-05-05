import 'dart:io';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';

class PDFViewerScreen extends StatefulWidget {
  final File file;
  const PDFViewerScreen({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  State<PDFViewerScreen> createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);
    return Scaffold(
      appBar: AppBar(title: Text(name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,))),
      body: PDFView(
        filePath: widget.file.path,
      ),
    );
  }
}
