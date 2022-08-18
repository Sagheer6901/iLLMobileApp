// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:outlook/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';



// void main() {
//   runApp(const MaterialApp(home: _WebViewExample()));
// }

class WebViewExample extends StatefulWidget {
  String? selectedTime;
  var date, instanceUser, docName, userName,contact,address, docid,patientid,amount,status;
  WebViewExample(
      {Key? key,
      this.selectedTime,
      this.date,
      this.instanceUser,
      this.docName,
        this.userName,
        this.contact,
        this.address,
      this.docid,
        this.patientid,
        this.status,
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
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Appointment Booking'),
        // actions: <Widget>[
        //   IconButton(onPressed: (){
        //     Navigator.pop(context);
        //   }, icon: Icon(Icons.arrow_back))
        // ],
      ),
      body: WebView(
          initialUrl: 'https://illmobile.tk/str/index.php?userName=${widget.userName}&contact=${widget.contact}&address=${widget.address}&docName=${widget.docName}&date=${widget.date}&datetime=${widget.selectedTime}&price=${widget.amount}&docid=${widget.docid}&patientid=${widget.patientid}&status=${widget.status}',
          // initialUrl: "https://illmobile.tk/str/index.php?price=${widget.amount}&docName=${widget.docName}&userName=${widget.userName}",
          // https://amzexpert.org/str/?userName=sagheer&contact=351635132&address=dfjshksm&docName=sardoc&date=2/5/22&datetime=5:22&price=35102&docid=65313&patientid=5631&status=pending
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
            //     "docname": widget.docName,
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
    //   floatingActionButton:  FloatingActionButton(
    //     onPressed: ()  {
    //       setState(() {
    //         print(js.context['location']['href']);
    //         js.context.callMethod("alert", [js.context['location']['href']]);
    //       });
    //       // var url = window.location.href;
    //       // print(" sdfaf $url");
    //       // Scaffold.of(context).showSnackBar(
    //       //   SnackBar(
    //       //       content: Text(
    //       //         'Current url is: $url',
    //       //         style: TextStyle(fontSize: 20),
    //       //       )),
    //       // );
    //       },
    // child: Icon(Icons.link),
    // ),
    );
  }
}







