import 'package:flutter/material.dart';
import 'package:bankingapplication/Data/AllVariables.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.AppBarColor,
        body:Directionality(
          textDirection: Language.direction,
          child: Stack(
            children: [
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_rounded),
                        color: colors.ButtonsColor,
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      // Center(
                      //   child: Text(
                      //     Language.Lang[33],
                      //     style: TextStyle(
                      //         fontSize: fontsSize.madiamfont,
                      //         color:colors.ButtonsColor,
                      //         fontFamily: 'GrenzeGotisch-VariableFont_wght'
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: size.height*.07,
                  ),

                  Expanded(
                    child: Container(
                      // height: size.height*.8,
                      // width: size.width,
                      decoration: BoxDecoration(
                          color: colors.BackgroundColor,
                          borderRadius:  BorderRadius.only(topLeft: Radius.circular(120.0),bottomRight: Radius.circular(120.0))
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          Center(
                            child: Text(
                              "Abdelr7man hassan",
                              style: TextStyle(
                                  fontSize: fontsSize.madiamfont,
                                  color:colors.BoldText,
                                  fontFamily: 'PlayfairDisplay-VariableFont_wght'
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height*.05,
                          ),
                          Container(
                            height: 30,
                            width: size.width*.75,
                            decoration: BoxDecoration(
                                color: colors.BackgroundColor,
                                borderRadius:  BorderRadius.all( Radius.circular(50.0)),
                               boxShadow: [
                                  BoxShadow(
                                    color: colors.ButtonsColor.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 1,
                                    offset: Offset(0, 0), // changes position of shadow
                                  ),
                                ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_today,
                                  color: colors.AppBarColor,
                                ),
                                Text(
                                  Language.Lang[34],
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont,
                                      color:colors.BoldText,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'PlayfairDisplay-VariableFont_wght'
                                  ),
                                ),
                                Text(
                                  "11/11/2020",
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont,
                                      color:colors.TextColor,
                                      fontFamily: 'PlayfairDisplay-VariableFont_wght'
                                  ),
                                ),

                                Text(
                                  Language.Lang[35],
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont,
                                      color:colors.BoldText,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'PlayfairDisplay-VariableFont_wght'
                                  ),
                                ),
                                Text(
                                  "22/02/2022",
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont,
                                      color:colors.TextColor,
                                      fontFamily: 'PlayfairDisplay-VariableFont_wght'
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height*.05,

                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.person,
                                    color: colors.BoldText,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width*.05,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      Language.Lang[36],
                                      style: TextStyle(
                                          fontSize: fontsSize.smallfont+10,
                                          color:colors.TextColor,
                                          fontFamily: 'Oswald-VariableFont_wght'
                                      ),
                                    ),
                                    Text(
                                      "ca**********456",
                                      style: TextStyle(
                                          fontSize: fontsSize.smallfont,
                                          color:colors.TextColor,
                                          fontFamily: 'Oswald-VariableFont_wght'
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: size.width*.2,
                                ),
                                Text(
                                  "2.589.655 \$",
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont+5,
                                      color:colors.TextColor,
                                      fontFamily: 'Oswald-VariableFont_wght'
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: colors.ButtonsColor,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.person_pin_circle,
                                    color: colors.BoldText,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width*.05,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      Language.Lang[37],
                                      style: TextStyle(
                                          fontSize: fontsSize.smallfont+10,
                                          color:colors.TextColor,
                                          fontFamily: 'Oswald-VariableFont_wght'
                                      ),
                                    ),
                                    Text(
                                      Language.Lang[38],
                                      style: TextStyle(
                                          fontSize: fontsSize.smallfont,
                                          color:colors.TextColor,
                                          fontFamily: 'Oswald-VariableFont_wght'
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: colors.ButtonsColor,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.phone,
                                    color: colors.BoldText,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width*.05,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      Language.Lang[39],
                                      style: TextStyle(
                                          fontSize: fontsSize.smallfont+10,
                                          color:colors.TextColor,
                                          fontFamily: 'Oswald-VariableFont_wght'
                                      ),
                                    ),
                                    Text(
                                      "+201119497650",
                                      style: TextStyle(
                                          fontSize: fontsSize.smallfont,
                                          color:colors.TextColor,
                                          fontFamily: 'Oswald-VariableFont_wght'
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: size.height*0.05,
                right: size.width*.25,
                left: size.width*.25,
                child: CircleAvatar(
                  radius: 60,
                  // backgroundColor: colors.BackgroundColor,
                  backgroundImage: AssetImage('assets/BankProfile.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
