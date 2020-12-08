import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:bankingapplication/Data/AllVariables.dart';
// import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class AccountData extends StatefulWidget {
  @override
  _AccountDataState createState() => _AccountDataState();
}

class _AccountDataState extends State<AccountData> {
  double Installments=5000,totle_account=25000,invoices=2000,radius=0.9,Count=25000;
  String BasicText='Bank Account';
  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
  return Directionality(
    textDirection: Language.direction,
    child: Column(
       children: <Widget>[
         SizedBox(
           height: 3,
         ),
         Image(
           image: AssetImage("assets/BankingLogo.png"),
           height: size.height * 0.1,
           width: size.width * 0.4,
         ),
         Center(
           child: Text(
             Language.Lang[50],
             style: TextStyle(
                 fontSize: fontsSize.bigfont-5,
                 color: colors.ButtonsColor,
                 fontFamily: 'GrenzeGotisch-VariableFont_wght'),
           ),
         ),
         Expanded(
           child: Container(
             width: size.width,
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
                 color: colors.BackgroundColor,
                 borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(80.0),
                     bottomRight: Radius.circular(80.0))),
             child: Column(
               children: <Widget>[
                 SizedBox(
                   height: 10,
                 ),
                 RaisedButton(
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20.0),
                       side: BorderSide(color: colors.BoldText)
                   ),
                   onPressed: () {
                     setState(() {
                       BasicText=Language.Lang[51];
                       Count=totle_account;
                       radius=.9;
                     });
                   },
                   child: Text(
                     Language.Lang[51],
                     style: TextStyle(
                         fontSize: fontsSize.smallfont+5,
                         color: colors.BoldText,
                         fontFamily: 'PlayfairDisplay-VariableFont_wght'
                     ),
                   ),
                   color: colors.ButtonsColor,
                   splashColor: Colors.grey,
                   textColor: colors.TextColor,
                 ),
//            //////////////////////////////////////////////////////////////////////
                   CircularPercentIndicator(
                     radius: size.width*.6,
                   animateFromLastPercent: true,
                   // restartAnimation: true,
//
                     animation: true,
                     startAngle:0,
                     animationDuration: 1200,
                     lineWidth: 5.0,
                     percent:radius,
                     center: Center(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Text('${BasicText.toString()}',
                             style: TextStyle(
                               color: colors.BoldText,
                               fontSize: fontsSize.madiamfont-5,
                               fontFamily: 'PlayfairDisplay-VariableFont_wght',
                             ),),
                           Text('$Count',
                             style: TextStyle(
                               color: colors.AppBarColor,
                               fontSize: fontsSize.smallfont+10,
                               fontFamily: 'PlayfairDisplay-VariableFont_wght',
                             ),),
                           Text('USD',
                             style: TextStyle(
                               color: colors.TextColor,
                               fontSize: fontsSize.smallfont,
                               fontFamily: 'PlayfairDisplay-VariableFont_wght',
                             ),),
                         ],
                       ),
                     ),
                     circularStrokeCap: CircularStrokeCap.butt,
                     backgroundColor: colors.TextColor,
                     progressColor: colors.ButtonsColor,
                   ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     RaisedButton(
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0),
                           side: BorderSide(color: colors.BoldText)
                       ),
                       onPressed: () {
                         setState(() {
                           BasicText=Language.Lang[52];
                           Count=Installments;
                           radius=Installments/totle_account;
                         });
                       },
                       child: Text(
                         Language.Lang[52],
                         style: TextStyle(
                             fontSize: fontsSize.smallfont+5,
                             color: colors.BoldText,
                             fontFamily: 'PlayfairDisplay-VariableFont_wght'
                         ),
                       ),
                       color: colors.ButtonsColor,
                       // splashColor: Colors.grey,
                       textColor: colors.TextColor,
                     ),

                     RaisedButton(
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0),
                           side: BorderSide(color: colors.BoldText)
                       ),
                       onPressed: () {
                         setState(() {
                           BasicText=Language.Lang[53];
                           Count=invoices;
                           radius=invoices/totle_account;
                         });
                       },
                       child: Text(
                         Language.Lang[53],
                         style: TextStyle(
                             fontSize: fontsSize.smallfont+5,
                             color: colors.BoldText,
                             fontFamily: 'PlayfairDisplay-VariableFont_wght'
                         ),
                       ),
                       color: colors.ButtonsColor,
                       // splashColor: Colors.grey,
                       textColor: colors.TextColor,
                     ),
                   ],
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
  );
  }
}
