import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bankingapplication/Data/AllVariables.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final phoneText=TextEditingController();
  final passwordText=TextEditingController();

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
//      appBar: ,
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
                height: size.height*0.12,
                width: size.width*0.4,
              ),
              Center(
                child: Text(
                  Language.Lang[0],
                  style: TextStyle(
                    fontSize: fontsSize.bigfont,
                    color:colors.ButtonsColor,
                    fontFamily: 'GrenzeGotisch-VariableFont_wght'
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: size.width,
                  // height: size.height*.68,
                  decoration: BoxDecoration(
                    color:colors.BackgroundColor,
                    borderRadius:  BorderRadius.only(topLeft: Radius.circular(80.0),bottomRight: Radius.circular(80.0))
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: size.height*.05,
                        ),
                        Container(
                          color: colors.BackgroundColor,
                          child:TextField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: colors.AppBarColor,
                            style: TextStyle(
                              color: colors.BoldText,
                            ),
                            decoration: InputDecoration(
                              fillColor: colors.BackgroundColor,
                              filled: true,
                              icon: Icon(MdiIcons.emailEdit,color: colors.ButtonsColor,),
                              //////////border when edit text disable//////////
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
                              labelText:Language.Lang[1],
                              hintText: Language.Lang[2],
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
                        height: 20.0,
                      ),
                        Container(
                          color: colors.BackgroundColor,
                          child:  TextField(
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
                            icon: Icon(MdiIcons.formTextboxPassword,color:colors.ButtonsColor,),
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
                              labelText: Language.Lang[3],
                              hintText: Language.Lang[4],
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
                          height: 10,
                        ),
                        Container(
                          padding:  EdgeInsets.only(left: size.width*.25,right: size.width*.25),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(color: colors.BoldText)
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/Home');
                            },
                            child: Text(
                              Language.Lang[5],
                              style: TextStyle(
                                  fontSize: fontsSize.madiamfont,
                                  color: colors.BoldText,
                                  fontFamily: 'PlayfairDisplay-Italic-VariableFont_wght'
                              ),
                            ),
                            color: colors.ButtonsColor,
                            splashColor: Colors.grey,
                            textColor: colors.TextColor,
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Register');
                            },
                            child: new Text(Language.Lang[6],
                              style: TextStyle(
                                fontSize: fontsSize.smallfont,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
