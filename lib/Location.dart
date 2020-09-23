import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:studycampus/CGU.dart';
import 'package:studycampus/Contact.dart';
import 'package:studycampus/EventDetails.dart';
import 'package:studycampus/components/PopupButtons.dart';


class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  Future<bool> _onBackPressed() async {
    // Your back press code here...
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
          onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1f2a47),
          brightness: Brightness.light,
          title: Text("Evenements",
            style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white
            ),),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,),
          ),
          centerTitle: true,
          actions: <Widget>[
           PopupButtons(),
          ],
        ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: 110
            ),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/images/even1.jpg"),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("JEUDI 6 AOUT 2020",
                      style: GoogleFonts.lato(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),),
                    Text("Tournoi de Foot loisir",
                      style: GoogleFonts.boogaloo(
                        color: Colors.black,
                        fontSize: 22,
                      ),),
                    Text("Le Five La Rochelle",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
