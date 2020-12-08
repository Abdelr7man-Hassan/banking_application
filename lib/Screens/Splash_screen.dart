import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';
import 'SignIn_page.dart';
import 'Profile_page.dart';
import 'package:bankingapplication/Data/AllVariables.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:splashscreen/splashscreen.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  int duringSplach() {
    return 1;
  }

  Map<int, Widget> op = {1: SignIn(), 2: Profile()};
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colors.AppBarColor,
      body:  SplashScreen(
        seconds:5 ,
        navigateAfterSeconds: new SignIn(),
        title: new Text(
          'HAIB',
          style: new TextStyle(fontFamily: 'GrenzeGotisch-VariableFont_wght', fontSize: fontsSize.bigfont,color: colors.ButtonsColor),
        ),
        image: Image.asset("assets/BankingLogo.png",),
        photoSize: size.height*.1,
        backgroundColor: colors.AppBarColor,
        loaderColor: colors.ButtonsColor,
      ),
    );
  }
}
      // body: Container(
      //   color: colors.AppBarColor,
      //   child: Column(
      //     children: [
      //       AnimatedSplash(
      //
      //         imagePath: 'assets/BankingLogo.png',
      //         home: SignIn(),
      //         customFunction: duringSplach,
      //         duration: 2000,
      //         type: AnimatedSplashType.StaticDuration,
      //         outputAndHome: op,
      //       ),
      //       new LinearPercentIndicator(
      //         width: 140.0,
      //         lineHeight: 14.0,
      //         percent: 0.5,
      //         center: Text(
      //           "50.0%",
      //           style: new TextStyle(fontSize: 12.0),
      //         ),
      //         trailing: Icon(Icons.mood),
      //         linearStrokeCap: LinearStrokeCap.roundAll,
      //         backgroundColor: Colors.grey,
      //         progressColor: Colors.blue,
      //       ),
      //     ],
      //   ),
      // ),
