import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:studycampus/CVMode.dart';
import 'package:studycampus/Dashboard.dart';
import 'package:studycampus/Evenements.dart';
import 'package:studycampus/Location.dart';


class EventDetails extends StatefulWidget {
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {

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
    return SafeArea(
      child: WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Color(0xffe7e9e7),
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Location()),

                );
              },
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: 130
                ),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Adresse",
                            style: GoogleFonts.lato(
                              color: Theme.of(context).primaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text("12 cours de la somme",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                            ),),
                          Text("33000 Bordeux",
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 16,
                            ),),
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 120,
                            maxWidth: MediaQuery.of(context).size.width/2-10,
                          ),
                          child: GoogleMap(
                            mapType: MapType.normal,
                            zoomControlsEnabled: false,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Location()),
                                );
                              },
                              icon: Icon(Icons.location_on,color: Colors.white,),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Color(0xffe7e9e7),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                // width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/job2.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.25,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back,color: Colors.white,),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 300
                          ),
                          child: Text("Flavion Berger / Malik Djoudi / Balladur",
                            style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),),
                        )

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Le Comfort moderne",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff274066)
                          ),),
                        SizedBox(height: 5,),
                        Text("Soiree",
                          style: TextStyle(
                            color: Colors.grey,
                          ),),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 3,
                          ),
                          color: Color(0xff274066),
                          child: Text("1032 PARTICIPENTS",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white,
                            ),),
                        ),
                      ],
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 60,
                        maxWidth: 60,
                        minWidth: 60,
                      ),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("15",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),),
                          Text("FEV",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                constraints: BoxConstraints(
                ),
                padding: EdgeInsets.only(left: 20,right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Qui cum venisset ob haec festinatis itineribus Antiochiam, praestrictis palatii ianuis, contempto Caesare, quem videri decuerat, ad praetorium cum pompa.",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 14,),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 15,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: (){},
                          icon: Image.asset("assets/icons/fb.png",
                            color: Theme.of(context).primaryColor,),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.location_on,color: Colors.white,size: 15,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),


            ],
          ),
        ),
      ),
    );
  }
}
