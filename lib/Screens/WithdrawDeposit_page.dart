import 'package:flutter/material.dart';
import 'package:bankingapplication/Data/AllVariables.dart';
import 'package:expandable/expandable.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'AccountData_page.dart';
import 'TransferMoney_page.dart';
class WithdrawDeposit extends StatefulWidget {
  @override
  _WithdrawDepositState createState() => _WithdrawDepositState();
}

class _WithdrawDepositState extends State<WithdrawDeposit> {
  Widget BusicWidget=Instructions();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.AppBarColor,
        body: Directionality(
          textDirection: Language.direction,
          child: SpinCircleBottomBarHolder(
            //TODO implement onpressed icons 7
            bottomNavigationBar: SCBottomBarDetails(
                circleColors: [
                  colors.TextColor,
                  colors.ButtonsColor,
                  colors.AppBarColor,
                ],

                iconTheme: IconThemeData(color: colors.TextColor),
                activeIconTheme: IconThemeData(color: colors.ButtonsColor),
                backgroundColor: colors.AppBarColor,
                titleStyle: TextStyle(color: colors.TextColor, fontSize: 12),
                activeTitleStyle: TextStyle(
                    color: colors.BackgroundColor,
                    fontSize: fontsSize.smallfont,
                    fontWeight: FontWeight.bold),
                actionButtonDetails: SCActionButtonDetails(
                    color: colors.ButtonsColor,
                    icon: Icon(
                      Icons.expand_less,
                      color: colors.BackgroundColor,
                    ),
                    elevation: 0),
                elevation: 0.0,
                items: [
                  SCBottomBarItem(
                      icon: MdiIcons.accountSettings,
                      title: Language.Lang[42],
                      onPressed: () {
                        setState(() {
                          BusicWidget=Instructions();
                        });
                      }),
                  SCBottomBarItem(
                      icon: MdiIcons.accountBoxMultipleOutline,
                      title: Language.Lang[43],
                      onPressed: () {
                        setState(() {
                          BusicWidget=TransferMoney();
                        });
                      }),
                ],
                circleItems: [
                  //Suggested Count: 3
                  SCItem(icon: Icon(MdiIcons.networkStrength1), onPressed: () {}),
                  SCItem(
                      icon: Icon(MdiIcons.accountBox),
                      onPressed: () {
                        setState(() {
                        BusicWidget=AccountData();
                        });
                      }),
                  SCItem(icon: Icon(Icons.map), onPressed: () {}),
                ],
                bnbHeight: 80 // Suggested Height 80
                ),
            // Put your Screen Content in Child
            child:BusicWidget,
          ),
        ),
      ),
    );
  }
}
class Instructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;
    return  Column(
      children: <Widget>[
        Image(
          image: AssetImage("assets/BankingLogo.png"),
          height: size.height * 0.12,
          width: size.width * 0.4,
        ),
        Center(
          child: Text(
            Language.Lang[42],
            style: TextStyle(
                fontSize: fontsSize.bigfont,
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
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: colors.BoldText,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0))),
//                        color: colors.TextColor,
                  child: ExpandablePanel(
                    iconColor: colors.ButtonsColor,
                    header: Text( Language.Lang[44],

                      style: TextStyle(
                        fontSize: fontsSize.smallfont+2,
                        color: colors.ButtonsColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayfairDisplay-VariableFont_wght',
                      ),
                    ),
                    expanded: Text(
                      Language.Lang[45],
                      style: TextStyle(
                        fontSize: fontsSize.smallfont,
                        color: colors.BackgroundColor,
                        fontFamily: 'PlayfairDisplay-VariableFont_wght',
                      ),
                      softWrap: true,
                    ),
                    tapHeaderToExpand: false,
                    hasIcon: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: colors.BoldText,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0))),
                  child: ExpandablePanel(
                    iconColor: colors.ButtonsColor,
                    header: Text(Language.Lang[46],
                      style: TextStyle(
                        fontSize: fontsSize.smallfont+2,
                        color: colors.ButtonsColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayfairDisplay-VariableFont_wght',
                      ),
                    ),
                    expanded: Text(
                      Language.Lang[47],
                      style: TextStyle(
                        fontSize: fontsSize.smallfont,
                        color: colors.BackgroundColor,
                        fontFamily: 'PlayfairDisplay-VariableFont_wght',
                      ),
                      softWrap: true,
                    ),
                    tapHeaderToExpand: false,
                    hasIcon: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: colors.BoldText,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0))),
                  child: ExpandablePanel(
                    iconColor: colors.ButtonsColor,
                    header: Text(
                      Language.Lang[48],
                      style: TextStyle(
                        fontSize: fontsSize.smallfont+2,
                        color: colors.ButtonsColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayfairDisplay-VariableFont_wght',
                      ),
                    ),
                    expanded: Text(
                      Language.Lang[49],
                      style: TextStyle(
                        fontSize: fontsSize.smallfont,
                        color: colors.BackgroundColor,
                        fontFamily: 'PlayfairDisplay-VariableFont_wght',
                      ),
                      softWrap: true,
                    ),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                  ),
                ),
//            //////////////////////////////////////////////////////////////////////
              ],
            ),
          ),
        ),
      ],
    );
  }
}

