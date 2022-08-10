import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppConfig {
  BuildContext _context;
  static double _height = 0;
  static double _width = 0;
  double _heightPadding = 0;
  double _widthPadding = 0;
  Map? userData;




  AppConfig(this._context) {
    MediaQueryData _queryData = MediaQuery.of(_context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding = _height -
        ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding =
        _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }

  void statusBar(){
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarColor: AppConfig.tripColor
          //color set to transperent or set your own color
        )
    );
  }

  double rH(double v) {
    return _height * v;
  }

  double rW(double v) {
    return _width * v;
  }

  double rHP(double v) {
    return _heightPadding * v;
  }

  double rWP(double v) {
    return _widthPadding * v;
  }

  static String apiSrcLink ='https://mobicell.net/Yaseo/';
  static String srcLink = '${apiSrcLink}admin/upload/';
  static Color tripColor = Color.fromARGB(255,37,47,82);
  static Color carColor = Color.fromARGB(255, 156,196,66,);
  static Color hotelColor = Color.fromARGB(255,254,231,76);
  static Color ratingIconColor = Colors.yellow;
  static Color shadeColor = Color.fromARGB(255,219,219,219);
  static Color textColor = Color.fromARGB(255, 162,162,162,);
  static Color navColor = Color.fromARGB(255,219,219,219);
  static Color queryBackground =Color.fromARGB(255, 239, 237, 247);
  static Color whiteColor = Colors.white;
  static String dummyReview =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor';
  static String dummyText =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip';
  // static double f(double v) {
  //   return _width * v;
  // }
  static double f6 = f(1);
  static double f5 = f(1.5);
  static double f(double v) {
    return _height * v;
  }
  static double f4 = f(2);
  static double f3 = f(2.5);
  static double f2 = f(3);
  static double f1 = f(3.5);


  static String fontFamilyRegular = 'Rubik-Regular';
  static String fontFamilyBold = 'Rubik-Bold';
  static String fontFamilyMedium = 'Rubik-Medium';
  // static double f6 = f(2);
  // static double f5 = f(3);
  // // double f(double v) {
  // //   return _height * v;
  // // }
  // static double f4 = f(4);
  // static double f3 = f(5);
  // static double f2 = f(6);
  // static double f1 = f(7);

}
