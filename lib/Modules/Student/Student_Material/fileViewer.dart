import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class fileVierwer extends StatelessWidget {
  final String pdfUrl;

  const fileVierwer({required this.pdfUrl});

  @override
  Widget build(BuildContext context) {
    print(pdfUrl);
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: PDFView(
        filePath: pdfUrl,
      ),
    );
  }
}
