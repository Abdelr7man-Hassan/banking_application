import 'package:flutter/material.dart';
import 'Screens/Splash_screen.dart';
import 'Screens/Profile_page.dart';
import 'Screens/Register_page.dart';
import 'Screens/SignIn_page.dart';
import 'Screens/Home_page.dart';
import 'Screens/CurrencyConverter_page.dart';
import 'Screens/Location_page.dart';
import 'Screens/WithdrawDeposit_page.dart';
import 'Screens/TransferMoney_page.dart';


void main() => runApp(MaterialApp(
  title: 'HAIB',
  initialRoute:'/' ,
  routes: {
    '/':(context)=>splashScreen(),
    '/Profile':(context)=>Profile(),
    '/SignIn':(context)=>SignIn(),
    '/Register':(context)=>RegisterPage(),
    '/Home':(context)=>Home(),
    '/CurrencyConverter':(context)=>CurrencyConverter(),
    '/Location':(context)=>LocationService(),
    '/WithdrawDepsit':(context)=>WithdrawDeposit(),
    '/TransferMoney':(context)=>TransferMoney(),
  },

));

