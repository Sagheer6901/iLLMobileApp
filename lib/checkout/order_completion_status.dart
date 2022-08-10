import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:outlook/checkout/app_config.dart';

class OrderCompletionStatus extends StatefulWidget {
  var limit = 7;

  var orderId,pStatus,msg,amount;
  OrderCompletionStatus({Key? key,this.orderId,this.pStatus,this.amount,this.msg}) : super(key: key);
  @override
  _OrderCompletionStatusState createState() => _OrderCompletionStatusState();
}

class _OrderCompletionStatusState extends State<OrderCompletionStatus> {
  late AppConfig _appConfig;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    SystemChrome.setSystemUIOverlayStyle(
         SystemUiOverlayStyle(statusBarColor: AppConfig.tripColor
          //color set to transperent or set your own color
        ));
    return Scaffold(
      // appBar: preferredSizeAppbar("Order Status", context),
      body: WillPopScope(
        onWillPop: () {
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(builder: (context) => NavigationScreen()),
          //         (route) => false);
          return Future.value(false);
        },
        child: SingleChildScrollView(
          child: Container(
            height: _appConfig.rH(80),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Order Completion Status:",
                        style: TextStyle(
                            fontFamily: AppConfig.fontFamilyRegular,
                            fontSize: AppConfig.f4),
                        textScaleFactor: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order Status:",
                            style: TextStyle(
                                fontFamily: AppConfig.fontFamilyRegular,
                                fontSize: AppConfig.f4),
                            textScaleFactor: 1,
                          ),
                          Text(
                            "${widget.msg}"=="0"?"Failed":"Success",
                            style: TextStyle(
                                fontFamily: AppConfig.fontFamilyRegular,
                                fontSize: AppConfig.f4),
                            textScaleFactor: 1,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order Id:",
                            style: TextStyle(
                                fontFamily: AppConfig.fontFamilyRegular,
                                fontSize: AppConfig.f4),
                            textScaleFactor: 1,
                          ),
                          Text(
                            "${widget.orderId}",
                            style: TextStyle(
                                fontFamily: AppConfig.fontFamilyRegular,
                                fontSize: AppConfig.f4),
                            textScaleFactor: 1,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       Text(
                            "Message :",
                            style: TextStyle(
                                fontFamily:
                                AppConfig.fontFamilyRegular,
                                fontSize: AppConfig.f4),
                            textScaleFactor: 1,
                          ),
                          Text(
                            widget.msg.toString().contains("0")?"Payment Failed":"Payment Success",
                            style: TextStyle(
                                fontFamily: AppConfig.fontFamilyRegular,
                                fontSize: AppConfig.f4),
                            textScaleFactor: 1,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(
                            "Amount:",
                            style: TextStyle(
                                fontFamily:
                                AppConfig.fontFamilyRegular,
                                fontSize: AppConfig.f4),
                            textScaleFactor: 1,
                          ),
                          Text(
                            "${widget.amount}",
                            style: TextStyle(
                                fontFamily: AppConfig.fontFamilyRegular,
                                fontSize: AppConfig.f4),
                            textScaleFactor: 1,
                          )
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      // drawer: const MyDrawer(),
    );
  }
}