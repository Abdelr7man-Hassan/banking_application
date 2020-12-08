import 'package:flutter/material.dart';
import 'package:bankingapplication/Data/AllVariables.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class TransferMoney extends StatefulWidget {
  @override
  _TransferMoneyState createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  int MaxAmount, Amount;

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
                height: 10,
              ),
              Image(
                image: AssetImage("assets/BankingLogo.png"),
                height: size.height * 0.12,
                width: size.width * 0.4,
              ),
              Center(
                child: Text(
                  Language.Lang[54],
                  style: TextStyle(
                      fontSize: fontsSize.madiamfont + 10,
                      color: colors.ButtonsColor,
                      fontFamily: 'GrenzeGotisch-VariableFont_wght'),
                ),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colors.BackgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80.0),
                            bottomRight: Radius.circular(80.0))),
                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        ShowUpAnimation(
                          direction: Direction.horizontal,
                          animationDuration: Duration(milliseconds: 1000),
                          offset: 2,
                          curve: Curves.easeIn,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              TextField(
                                keyboardType: TextInputType.number,
                                cursorColor: colors.AppBarColor,
                                style: TextStyle(
                                  color: colors.BoldText,
                                ),
                                decoration: InputDecoration(
                                  fillColor: colors.BackgroundColor,
                                  filled: true,
                                  icon: Icon(MdiIcons.bank,color: colors.BoldText),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: colors.BoldText,
                                      width: 1.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: colors.AppBarColor,
                                      width: 1.0,
                                    ),
                                  ),
                                  labelText: Language.Lang[55],
                                  hintText:  Language.Lang[56],
                                  hintStyle: TextStyle(
                                      fontSize: fontsSize.smallfont,
                                      color: colors.TextColor),
                                  labelStyle: TextStyle(
                                    fontSize: fontsSize.smallfont,
                                    color: colors.ButtonsColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                // color: colors.BackgroundColor,
                                child: TextField(
                                  autocorrect: true,
                                  onChanged: (text) {
                                    Amount = int.parse(text);
                                  },
                                  keyboardType: TextInputType.number,
                                  cursorColor: colors.AppBarColor,
                                  style: TextStyle(
                                    color: colors.BoldText,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: colors.BackgroundColor,
                                    filled: true,
                                    icon: Icon(MdiIcons.stackExchange,color: colors.BoldText),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: colors.BoldText,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: colors.AppBarColor,
                                        width: 1.0,
                                      ),
                                    ),
//                                  hintText: ' Enter Vaild Password',
                                    labelText:  Language.Lang[57],
                                    hintStyle: TextStyle(
                                        fontSize: fontsSize.smallfont,
                                        color: colors.TextColor),
                                    labelStyle: TextStyle(
                                      fontSize: fontsSize.smallfont,
                                      color: colors.ButtonsColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5.0, 5, 5.0),
                                decoration: BoxDecoration(
                                    color: colors.TextColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0))),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          Language.Lang[58],
                                          style: TextStyle(
                                              fontSize: fontsSize.smallfont ,
                                              color: colors.ButtonsColor,
                                              fontFamily:
                                                  'GrenzeGotisch-VariableFont_wght'),
                                        ),
                                        Text(
                                            Language.Lang[59],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: fontsSize.smallfont ,
                                              color: colors.ButtonsColor,
                                              fontFamily:
                                                  'GrenzeGotisch-VariableFont_wght'),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          Language.Lang[60],
                                          style: TextStyle(
                                              fontSize: fontsSize.smallfont ,
                                              color: colors.ButtonsColor,
                                              fontFamily:
                                                  'GrenzeGotisch-VariableFont_wght'),
                                        ),
                                        Text(
                                          Language.Lang[61],
                                          style: TextStyle(
                                              fontSize: fontsSize.smallfont ,
                                              color: colors.ButtonsColor,
                                              fontWeight: FontWeight.bold,
                                              fontFamily:
                                                  'GrenzeGotisch-VariableFont_wght'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: colors.BoldText)
                                ),
                                onPressed: () {
                                  AwesomeDialog(
                                    context: context,
                                    width: 280,
                                    headerAnimationLoop: false,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: 'Transfer INFO',
                                    desc: 'Succesfull Transfer',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {},
                                  )..show();
                                },
                                child: Text(
                                  Language.Lang[62],
                                  style: TextStyle(
                                      fontSize: fontsSize.madiamfont,
                                      color: colors.BoldText,
                                      fontFamily: 'PlayfairDisplay-Italic-VariableFont_wght'
                                  ),
                                ),
                                color: colors.ButtonsColor,
                                splashColor: colors.TextColor,
                                textColor: colors.TextColor,
                              ),
//
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
