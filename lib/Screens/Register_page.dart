import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:bankingapplication/Data/AllVariables.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.AppBarColor,
//        appBar: ,
        body: Column(
          children: <Widget>[
           // SizedBox(
           //   height: 10,
           // ),
            Center(
              child: Text(
                Language.Lang[7],
                style: TextStyle(
                    fontSize: fontsSize.bigfont,
                    color:colors.ButtonsColor,
                    fontFamily: 'GrenzeGotisch-VariableFont_wght'
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: colors.BackgroundColor,
                    borderRadius:  BorderRadius.only(topLeft: Radius.circular(90.0),bottomRight: Radius.circular(90.0))

                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
//                    =============FIRST AND LAST NAME=====
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(
                            width:size.width*.45,
                            child: TextField(
//                        controller: phoneText,
                              cursorColor: colors.AppBarColor,
                              style: TextStyle(
                                color: colors.BoldText,
                              ),
                              decoration: InputDecoration(
                                fillColor: colors.BackgroundColor,
                                filled: true,
                                icon: Icon(MdiIcons.renameBox,color: colors.ButtonsColor,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: new BorderSide(
                                  color: colors.TextColor,
                                  width: 1.0,
                                ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: colors.BoldText,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: colors.AppBarColor,
                                    width: 2.0,
                                  ),
                                ),
                                labelText: Language.Lang[8],
                                hintText: Language.Lang[9],
                                hintStyle:  TextStyle(
                                    fontSize: fontsSize.smallfont,
                                    color: colors.TextColor
                                ),
                                labelStyle: TextStyle(
                                  fontSize: fontsSize.smallfont,
                                  color: colors.ButtonsColor
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width*.45,
                            child: TextField(
//                        controller: phoneText,
                            cursorColor: colors.AppBarColor,
                            style: TextStyle(
                            color: colors.BoldText,
                            ),
                            decoration: InputDecoration(
                              fillColor: colors.BackgroundColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: new BorderSide(
                                  color: colors.TextColor,
                                  width: 1.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: colors.BoldText,
                                  width: 2.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: colors.AppBarColor,
                                  width: 2.0,
                                ),
                              ),
                                labelText: Language.Lang[10],
                                hintText: Language.Lang[11],
                                hintStyle:  TextStyle(
                                    fontSize: fontsSize.smallfont,
                                    color: colors.TextColor
                                ),
                                labelStyle: TextStyle(
                                    fontSize: fontsSize.smallfont,
                                    color: colors.ButtonsColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
//                      ============EMAIL ADDRESS========
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
//                        controller: phoneText,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: colors.AppBarColor,
                          style: TextStyle(
                            color: colors.BoldText,
                          ),
                          decoration: InputDecoration(
                            fillColor: colors.BackgroundColor,
                            filled: true,
                            icon: Icon(MdiIcons.email,color: colors.ButtonsColor,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: new BorderSide(
                                color: colors.TextColor,
                                width: 1.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: colors.BoldText,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: colors.AppBarColor,
                                width: 2.0,
                              ),
                            ),
                            labelText: Language.Lang[12],
                            hintText: Language.Lang[13],
                            hintStyle:  TextStyle(
                                fontSize: fontsSize.smallfont,
                                color: colors.TextColor
                            ),
                            labelStyle: TextStyle(
                              fontSize: fontsSize.smallfont,
                              color: colors.ButtonsColor,
                            ),
                          ),
                        ),
//                    ==============PHONE ===============
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
//                      controller: phoneText,
                        keyboardType: TextInputType.phone,
                        cursorColor: colors.AppBarColor,
                        style: TextStyle(
                          color: colors.BoldText,
                        ),
                        decoration: InputDecoration(
                          fillColor: colors.BackgroundColor,
                          filled: true,
                          icon: Icon(MdiIcons.phone,color: colors.ButtonsColor,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45),
                            borderSide: new BorderSide(
                              color: colors.TextColor,
                              width: 1.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: colors.BoldText,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: colors.AppBarColor,
                              width: 2.0,
                            ),
                          ),

                          labelText: Language.Lang[14],
                          hintText: Language.Lang[15],
                          hintStyle:  TextStyle(
                              fontSize: fontsSize.smallfont,
                              color: colors.TextColor
                          ),
                          labelStyle: TextStyle(
                            fontSize: fontsSize.smallfont,
                            color: colors.ButtonsColor,
                          ),
                        ),
                      ),
//                    ===========PASSWORD ROW===========
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(
                            width:size.width*.45,
                            child: TextField(
//                          controller: phoneText,
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: colors.AppBarColor,
                              style: TextStyle(
                                color: colors.BoldText,
                              ),
                              decoration: InputDecoration(
                                fillColor: colors.BackgroundColor,
                                filled: true,
                                icon: Icon(MdiIcons.formTextboxPassword,color: colors.ButtonsColor,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: new BorderSide(
                                    color: colors.TextColor,
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: colors.BoldText,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: colors.AppBarColor,
                                    width: 2.0,
                                  ),
                                ),
                                labelText: Language.Lang[16],
                                hintText: Language.Lang[17],
                                hintStyle:  TextStyle(
                                    fontSize: fontsSize.smallfont,
                                    color: colors.TextColor
                                ),
                                labelStyle: TextStyle(
                                  fontSize: fontsSize.smallfont,
                                  color: colors.ButtonsColor,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: size.width*.45,
                            child: TextField(
//                          controller: phoneText,
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: colors.AppBarColor,
                              style: TextStyle(
                                color: colors.BoldText,
                              ),
                              decoration: InputDecoration(
                                fillColor: colors.BackgroundColor,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: new BorderSide(
                                    color: colors.TextColor,
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: colors.BoldText,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: colors.AppBarColor,
                                    width: 2.0,
                                  ),
                                ),
                                labelText: Language.Lang[18],
                                hintText: Language.Lang[19],
                                hintStyle:  TextStyle(
                                    fontSize: fontsSize.smallfont,
                                    color: colors.TextColor
                                ),
                                labelStyle: TextStyle(
                                  fontSize: fontsSize.smallfont,
                                  color: colors.ButtonsColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
//                    ==========BUTTON============
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: size.width*.23,right: size.width*.23),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: colors.BoldText)
                          ),

                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/Home');
                          },
                          child: Text(
                            Language.Lang[20],
                            style: TextStyle(
                              fontSize: fontsSize.madiamfont-5,
                              color: colors.BoldText,
                                fontFamily: 'PlayfairDisplay-Italic-VariableFont_wght'
                            ),
                          ),

                          color: colors.ButtonsColor,
                          splashColor: Colors.grey,
                          textColor: colors.TextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}

