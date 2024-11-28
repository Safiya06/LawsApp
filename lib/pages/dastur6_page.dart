import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:lows_app/pages/pdf-screen.dart';
import 'package:path_provider/path_provider.dart';

class Dastur6Page extends StatefulWidget {
  const Dastur6Page({super.key});

  @override
  State<Dastur6Page> createState() => _Dastur6PageState();
}

class _Dastur6PageState extends State<Dastur6Page> {
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

  Widget _dasturContainer(String value, double size) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: size,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 40,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   if (pdf2.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFScreen(path: pdf2),
                  ),
                );
              }
                  // Navigator.pushNamed(context, '/Dastur61');
                },
                child: _dasturContainer('Никоҳи бармаҳал', 36),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   if (pdf1.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFScreen(path: pdf1),
                  ),
                );
              }
                  // Navigator.pushNamed(context, '/Dastur61');
                },
                child: _dasturContainer('Барномаи рушди оила', 36),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur62');
                },
                child:
                    _dasturContainer('Ҷазо барои содир намудани зӯроварӣ', 42),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
