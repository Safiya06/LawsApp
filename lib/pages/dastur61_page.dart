import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lows_app/pages/pdf-screen.dart';
import 'package:path_provider/path_provider.dart';

class Dastur61Page extends StatefulWidget {
  const Dastur61Page({super.key});

  @override
  State<Dastur61Page> createState() => _Dastur61PageState();
}

class _Dastur61PageState extends State<Dastur61Page> {
  late String pdf1;
  late String pdf2;

  Future<File> fromAsset(String asset, String filename) async {
    // To open from assets, you can copy them to the app storage folder, and the access them "locally"
    Completer<File> completer = Completer();

    try {
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$filename");
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }

  @override
  void initState() {
    fromAsset('assets/file-1.pdf', 'file-1.pdf').then((f) {
      setState(() {
        pdf1 = f.path;
      });
    });
    fromAsset('assets/file-2.pdf', 'file-2.pdf').then((f) {
      setState(() {
        pdf2 = f.path;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PDFScreen(path: pdf1,)

          //EXAMPLE how to open PDF
          // TextButton(
          //   child: Text("Open PDF 1"),
          //   onPressed: () {
          //     if (pdf1.isNotEmpty) {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => PDFScreen(path: pdf1),
          //         ),
          //       );
          //     }
          //   },
          // ),
          // TextButton(
          //   child: Text("Open PDF 2"),
          //   onPressed: () {
          //     if (pdf1.isNotEmpty) {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => PDFScreen(path: pdf2),
          //         ),
          //       );
          //     }
          //   },
          // ),
        ],
      ),
    );
  }
}
