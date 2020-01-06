import 'package:daraapp/views/login.dart';
import 'package:daraapp/views/orderDetails.dart';
import 'package:daraapp/views/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
          locale: Locale("ar"),
          title: 'Darak App',
          home:// OrderDetails(),
          //LogIn(),
        splash(),
          ),
    );
  }
}
//test@email.com
//Web@1234
