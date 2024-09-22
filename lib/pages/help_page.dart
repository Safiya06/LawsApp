import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lows_app/pages/pdf-screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  bool _showPhoneNumbers = false;
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
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 15),
            color: Color(0xfffea701),
            child: Text(
              '92 970-16-66',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          )
              .animate(
                target: _showPhoneNumbers ? 1 : 0,
              )
              .scale(
                duration: Duration(milliseconds: 250),
              )
              .fadeIn()
              .slideY(
                begin: 2,
                end: 0,
                duration: Duration(milliseconds: 250),
              ),

          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showPhoneNumbers = !_showPhoneNumbers;
                });
              },
              child: Container(
                height: 335,
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 8,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      '!',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 175,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'КУМАК',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 37,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Animate(
          //   // autoPlay: _showPhoneNumbers,
          //   // delay: Duration(hours: _showPhoneNumbers ? 0 : 10),
          //   effects: [FadeEffect(), SlideEffect(), ScaleEffect()],
          //   child: Text('Phone 2'),
          // ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 15),
            color: Color(0xfffea701),
            child: Text(
              '92 970-16-66',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          )
              .animate(
                target: _showPhoneNumbers ? 1 : 0,
              )
              .scale(
                duration: Duration(milliseconds: 250),
              )
              .fadeIn()
              .slideY(
                begin: -2,
                end: 0,
                duration: Duration(milliseconds: 250),
              ),
          //EXAMPLE how to open PDF
          TextButton(
            child: Text("Open PDF 1"),
            onPressed: () {
              if (pdf1.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFScreen(path: pdf1),
                  ),
                );
              }
            },
          ),
          TextButton(
            child: Text("Open PDF 2"),
            onPressed: () {
              if (pdf1.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFScreen(path: pdf2),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
