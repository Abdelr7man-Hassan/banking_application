import 'package:bankingapplication/Data/AllVariables.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.AppBarColor,
        body: Directionality(
          textDirection: Language.direction,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * .02,
              ),
              Image(
                image: AssetImage("assets/BankingLogo.png"),
                height: size.height*0.12,
                width: size.width*0.4,
              ),
              Center(
                child: Text(
                  Language.Lang[21],
                  style: TextStyle(
                      fontSize: fontsSize.bigfont,
                      color: colors.ButtonsColor,
                      fontFamily: 'GrenzeGotisch-VariableFont_wght'),
                ),
              ),
              Expanded(
                child: Container(
                  // width: size.width,
                  // height: size.height * .78,
                  decoration: BoxDecoration(
                      color: colors.BackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80.0),
                          bottomRight: Radius.circular(80.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 15.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Profile');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  Language.Lang[22],
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont + 10,
                                      color: colors.TextColor,
                                      fontFamily: 'Oswald-VariableFont_wght'),
                                ),
                                Icon(
                                  Icons.person,
                                  size: fontsSize.smallfont + 10,
                                  color: colors.BoldText,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: colors.ButtonsColor,
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Location');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  Language.Lang[23],
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont + 10,
                                      color: colors.TextColor,
                                      fontFamily: 'Oswald-VariableFont_wght'),
                                ),
                                Icon(
                                  Icons.account_balance,
                                  size: fontsSize.smallfont + 10,
                                  color: colors.BoldText,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: colors.ButtonsColor,
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/CurrencyConverter');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  Language.Lang[24],
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont + 10,
                                      color: colors.TextColor,
                                      fontFamily: 'Oswald-VariableFont_wght'),
                                ),
                                Icon(
                                  Icons.repeat,
                                  size: fontsSize.smallfont + 10,
                                  color: colors.BoldText,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: colors.ButtonsColor,
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/WithdrawDepsit');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  Language.Lang[25],
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont + 10,
                                      color: colors.TextColor,
                                      fontFamily: 'Oswald-VariableFont_wght'),
                                ),
                                Icon(
                                  MdiIcons.accountSettings,
                                  size: fontsSize.smallfont + 10,
                                  color: colors.BoldText,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: colors.ButtonsColor,
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: new Drawer(
          child: Container(
            color: colors.AppBarColor,
            child: ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text("Abdelrhman Hassan",
                      style: TextStyle(
                        color: colors.ButtonsColor,
                      )),
                  currentAccountPicture: CircleAvatar(
                  backgroundImage:AssetImage('assets/BankProfile.png') ,
                      ),
                  otherAccountsPictures: <Widget>[],
                  accountEmail: Text("Abdelr7man.hassan@gmail.com",
                      style: TextStyle(color: colors.ButtonsColor)),
                  arrowColor: colors.ButtonsColor,
                  decoration: new BoxDecoration(
                      color: colors.TextColor,
                      image: DecorationImage(
                        image: new AssetImage('assets/bankCover.png'),
                        fit: BoxFit.fill,
                      )),
                ),
                ExpandablePanel(
                  iconColor: colors.ButtonsColor,
                  header: Text(
                    Language.Lang[26],
                    style: TextStyle(
                      fontSize: fontsSize.smallfont + 10,
                      color: colors.ButtonsColor,
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'Oswald-VariableFont_wght',
                    ),
                  ),
                  expanded:  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        Language.langu(1);
                      });
                      //TODO put the function here
                    },
                    child: Column(
                      children: [
                        new Divider(
                          color: colors.ButtonsColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60,0,5,0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text(
                                Language.Lang[27],
                                style: TextStyle(
                                    fontSize: fontsSize.smallfont+5 ,
                                    color: Colors.white,
                                    fontFamily: 'Oswald-VariableFont_wght'),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.text_rotation_none,
                                  size: fontsSize.smallfont + 5,
                                  color:Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Divider(
                          color: colors.ButtonsColor,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          setState(() {
                            Language.langu(2);
                          });
                              //TODO put the function here
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(60,0,5,0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  Language.Lang[28],
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont + 5,
                                      color: Colors.white,
                                      fontFamily: 'Oswald-VariableFont_wght'),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.language,
                                    size: fontsSize.smallfont + 5,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // softWrap: true,
                  ),
                  tapHeaderToExpand: false,
                  hasIcon: true,
                ),
                new Divider(

                  color: colors.ButtonsColor,
                ),
                ExpandablePanel(
                  iconColor: colors.ButtonsColor,
                  header: Text(
                    Language.Lang[29],
                    style: TextStyle(
                      fontSize: fontsSize.smallfont + 10,
                      color: colors.ButtonsColor,
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'Oswald-VariableFont_wght',
                    ),
                  ),
                  expanded:  GestureDetector(
                    onTap: () {
                      //TOdo
                      setState(() {
                      colors.ColorMood(1);
                      });
                      Navigator.pop(context);
                      // Navigator.pop(context);
                      // Navigator.pop(context);

                    },
                    child: Column(
                      children: [
                        new Divider(
                          color: colors.ButtonsColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60,0,5,0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text(
                                Language.Lang[30],
                                style: TextStyle(
                                    fontSize: fontsSize.smallfont+5 ,
                                    color: Colors.white,
                                    fontFamily: 'Oswald-VariableFont_wght'),
                              ),
                              IconButton(
                                icon: Icon(
                                  MdiIcons.moonWaningCrescent,
                                  size: fontsSize.smallfont + 5,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Divider(
                          color: colors.ButtonsColor,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                            colors.ColorMood(2);
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(60,0,5,0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  Language.Lang[31],
                                  style: TextStyle(
                                      fontSize: fontsSize.smallfont + 5,
                                      color: Colors.white,
                                      fontFamily: 'Oswald-VariableFont_wght'),
                                ),
                                IconButton(
                                  icon: Icon(
                                    MdiIcons.themeLightDark,
                                    size: fontsSize.smallfont + 5,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // softWrap: true,
                  ),
                  tapHeaderToExpand: false,
                  hasIcon: true,
                ),
                new Divider(
                  color: colors.ButtonsColor,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    // Navigator.pop(context);
                    Navigator.pushNamed(context, '/SignIn');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Text(
                        Language.Lang[32],
                        style: TextStyle(
                            fontSize: fontsSize.smallfont+10 ,
                            color: colors.ButtonsColor,
                            fontFamily: 'Oswald-VariableFont_wght'),
                      ),
                      IconButton(
                        icon: Icon(
                          MdiIcons.logout,
                          size: fontsSize.smallfont + 10,
                          color: colors.ButtonsColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
