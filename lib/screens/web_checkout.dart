// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:html';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:outlook/checkout/order_completion_status.dart';
import 'package:outlook/screens/editdoc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'dart:js' as js;



// void main() {
//   runApp(const MaterialApp(home: _WebViewExample()));
// }

class WebViewExample extends StatefulWidget {
  String? selectedTime;
  var date, instanceUser, name, docid,amount;
  WebViewExample(
      {Key? key,
      this.selectedTime,
      this.date,
      this.instanceUser,
      this.name,
      this.docid,
      this.amount
      })
      : super(key: key);

  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Flutter WebView example'),
      //   actions: <Widget>[
      //     _SampleMenu(_controller.future),
      //   ],
      // ),
      body: WebView(
          initialUrl: 'http://localhost/str/index.php?price=${widget.amount}&doctor=${widget.name}',
          onWebViewCreated: (WebViewController controller) {
            _controller.complete(controller);
          },
          onPageStarted: (String url) async {
            print('Page started loading: $url');
            // if (url.contains("http://localhost/str/submit.php")) {
            //   await FirebaseFirestore.instance
            //       .collection("appointments")
            //       .doc()
            //       .set({
            //     "docname": widget.name,
            //     "docid": widget.docid,
            //     "patientid": widget.instanceUser,
            //     "time": widget.selectedTime,
            //     "date": widget.date,
            //     "status": 'pending'
            //   }).then((_) {
            //     Navigator.pop(context);
            //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //         content: Text('Appointment Booked Successfully!')));
            //   });
            //   //orderPlaceApi(paymentIntentData!['id'].toString())
            //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //     content: Text("paid successfully"),
            //     backgroundColor: Colors.black12,
            //   ));
            // } else {
            //   Navigator.pop(context);
            // }
          },
          onPageFinished: (String url) async {
            print('Page finished loading: $url');
            // if (url.contains("http://localhost/str/submit.php")) {
            //   await FirebaseFirestore.instance
            //       .collection("appointments")
            //       .doc()
            //       .set({
            //     "docname": widget.name,
            //     "docid": widget.docid,
            //     "patientid": widget.instanceUser,
            //     "time": widget.selectedTime,
            //     "date": widget.date,
            //     "status": 'pending'
            //   }).then((_) {
            //     Navigator.pop(context);
            //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //         content: Text('Appointment Booked Successfully!')));
            //   });
            //   //orderPlaceApi(paymentIntentData!['id'].toString())
            //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //     content: Text("paid successfully"),
            //     backgroundColor: Colors.black12,
            //   ));
            // } else {
            //   // Navigator.pop(context);
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => OrderCompletionStatus(orderId:"",pStatus:"y",amount:"52",msg:"hjkk")));
            //
            // }
          }),
      floatingActionButton:  FloatingActionButton(
        onPressed: ()  {
          setState(() {
            print(js.context['location']['href']);
            js.context.callMethod("alert", [js.context['location']['href']]);
          });
          // var url = window.location.href;
          // print(" sdfaf $url");
          // Scaffold.of(context).showSnackBar(
          //   SnackBar(
          //       content: Text(
          //         'Current url is: $url',
          //         style: TextStyle(fontSize: 20),
          //       )),
          // );
          },
    child: Icon(Icons.link),
    ),
    );
  }
}

enum _MenuOptions {
  doPostRequest,
}

class _SampleMenu extends StatelessWidget {
  const _SampleMenu(this.controller);

  final Future<WebViewController> controller;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: controller,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        return PopupMenuButton<_MenuOptions>(
          onSelected: (_MenuOptions value) {
            switch (value) {
              case _MenuOptions.doPostRequest:
                _onDoPostRequest(controller.data!, context);
                break;
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuItem<_MenuOptions>>[
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.doPostRequest,
              child: Text('Post Request'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _onDoPostRequest(
      WebViewController controller, BuildContext context) async {
    final WebViewRequest request = WebViewRequest(
      uri: Uri.parse('https://httpbin.org/post'),
      method: WebViewRequestMethod.post,
      headers: <String, String>{'foo': 'bar', 'Content-Type': 'text/plain'},
      body: Uint8List.fromList('Test Body'.codeUnits),
    );
    await controller.loadRequest(request);
  }
}
