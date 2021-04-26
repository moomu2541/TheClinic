import 'package:flutter/material.dart';

class MyStyle {

  Color darkColor = Color(0xff00b248);
  Color prinaryColor = Color(0xff00e676);
  Color lightColor = Color(0xff66ffa6);

  TextStyle redBoldStyle() => TextStyle(
      color: Colors.red.shade700,
      fontWeight: FontWeight.bold
  );

  Widget showLogo() => Image.asset('assets/images/logo.png');

  Widget titleH1(String string) => Text(
      string,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: darkColor,
      )
  );

  Widget titleH2(String string) => Text(
      string,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: darkColor,
      )
  );

  Widget titleH3(String string) => Text(
      string,
      style: TextStyle(
        fontSize: 16,
        //fontWeight: FontWeight.bold,
        color: darkColor,
      )
  );

  MyStyle();
}