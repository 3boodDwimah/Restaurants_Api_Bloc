import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:untitled/Ui/choos/choos.dart';
import 'package:untitled/Ui/home/home1.dart';
import 'package:untitled/bloc/Dio/dio_helper.dart';

import 'package:untitled/bloc/data/cubitqrcodo/cubit.dart';
import 'package:untitled/bloc/data/cubitqrcodo/states.dart';
import 'package:untitled/cons/cache_helper.dart';
import 'package:untitled/cons/components.dart';

import '../../modle/qr.dart';

class barcode1 extends StatefulWidget {
  const barcode1({Key? key}) : super(key: key);

  @override
  State<barcode1> createState() => _barcode1State();
}

class _barcode1State extends State<barcode1> {
  final qrkey = GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  Barcode? barcode;
  var a = 0;
  Qr? qr;

// void initState() {
//   launch("${barcode!.code}");
//
//     super.initState();
//   }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void reassemble() async {
    super.reassemble();

    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildQrView(context),
            Positioned(bottom: 10, child: buildResult()),
            Positioned(top: 10, child: buildConteolButtons())
          ],
        ),
      ),
    );
  }

  Widget buildConteolButtons() => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white24,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () async {
                  await controller?.toggleFlash();
                  setState(() {});
                },
                icon: FutureBuilder<bool?>(
                  future: controller?.getFlashStatus(),
                  builder: (context, snapshot) {
                    if (snapshot.data != null) {
                      return Icon(Icons.flash_off);
                    } else {
                      return Container();
                    }
                  },
                )),
          ],
        ),
      );
  Widget buildResult() => InkWell(
        onTap: () {
          setState(() {
            DioHelper.postData(
                    data: {'url': barcode!.code}, url: 'filterNameController')
                .then((value) {
              if (barcode!.code!.contains("abufadistore") &&
                  barcode!.code != null) {
                print(value.data);
                qr = Qr.fromJson(value.data);
                print(
                    "==================================================================");
                print(qr!.data);

                CacheHelper.sharedPreferences!.setString('name', '${qr!.data}');
                print(CacheHelper.sharedPreferences!.getString('name'));
                navigateAndFinish(
                  context,
                  Home(),
                );
              }

              print('===============================');
              print('===============================');

              print('===============================');

              print(barcode!.code!);
              print('===============================');
            });
          });
        },
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white24),
          child: Text(
            barcode != null
                ? 'Result : ${barcode!.code}'
                : 'Scan a code!'
                    "Scan a code!",
            maxLines: 3,
          ),
        ),
      );

  Widget buildQrView(BuildContext context) => QRView(
        key: qrkey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
            borderRadius: 10,
            borderColor: Colors.red,
            borderWidth: 10,
            borderLength: 20,
            cutOutSize: MediaQuery.of(context).size.width * .8),
      );
  void onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);

    controller.scannedDataStream
        .listen((barcode) => setState(() => this.barcode = barcode));
  }
}
