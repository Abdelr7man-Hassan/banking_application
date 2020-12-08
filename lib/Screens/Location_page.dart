import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:bankingapplication/Data/AllVariables.dart';

class LocationService extends StatefulWidget {
  @override
  _LocationServiceState createState() => _LocationServiceState();
}

class _LocationServiceState extends State<LocationService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////////AppBar///////////
      appBar: AppBar(
        backgroundColor: colors.AppBarColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: colors.ButtonsColor,
          onPressed: (){
            Navigator.pop(context);
          }          ,
        ),
        title: Text(
          Language.Lang[40],
          style: TextStyle(
              color: colors.ButtonsColor,
              fontSize: fontsSize.madiamfont,
            fontFamily: 'GrenzeGotisch-VariableFont_wght'
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(30.0444,31.2357),
              zoom: 15,
            ),
          ),
        ],
      ),
    );
  }
}
