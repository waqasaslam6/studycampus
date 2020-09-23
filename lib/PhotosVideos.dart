import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/CGU.dart';
import 'package:studycampus/Contact.dart';
import 'package:studycampus/components/PopupButtons.dart';

class PhotosVideos extends StatefulWidget {
  @override
  _PhotosVideosState createState() => _PhotosVideosState();
}

class _PhotosVideosState extends State<PhotosVideos> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0e0e0),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xff1f2a47),
        brightness: Brightness.light,
        title: Text("PHOTOS / VIDEOS",
          style: GoogleFonts.lato(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        centerTitle: true,
        actions: <Widget>[
         PopupButtons(),
        ],
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg",),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("NUIT du Futsal SUAPSE",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.all(5),
                      color: Theme.of(context).primaryColor,
                      child: Text("VIDEO",
                      style: GoogleFonts.boogaloo(
                        color: Colors.white,
                      ),),
                    ),
                    SizedBox(height: 5,),
                    Text("1 min 35 sec",
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg",),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("NUIT du Futsal SUAPSE",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.all(5),
                      color: Theme.of(context).primaryColor,
                      child: Text("VIDEO",
                        style: GoogleFonts.boogaloo(
                          color: Colors.white,
                        ),),
                    ),
                    SizedBox(height: 5,),
                    Text("1 min 35 sec",
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg",),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("NUIT du Futsal SUAPSE",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.all(5),
                      color: Theme.of(context).primaryColor,
                      child: Text("VIDEO",
                        style: GoogleFonts.boogaloo(
                          color: Colors.white,
                        ),),
                    ),
                    SizedBox(height: 5,),
                    Text("1 min 35 sec",
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg",),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("NUIT du Futsal SUAPSE",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.all(5),
                      color: Theme.of(context).primaryColor,
                      child: Text("VIDEO",
                        style: GoogleFonts.boogaloo(
                          color: Colors.white,
                        ),),
                    ),
                    SizedBox(height: 5,),
                    Text("1 min 35 sec",
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg",),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("NUIT du Futsal SUAPSE",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.all(5),
                      color: Theme.of(context).primaryColor,
                      child: Text("VIDEO",
                        style: GoogleFonts.boogaloo(
                          color: Colors.white,
                        ),),
                    ),
                    SizedBox(height: 5,),
                    Text("1 min 35 sec",
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg",),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("NUIT du Futsal SUAPSE",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.all(5),
                      color: Theme.of(context).primaryColor,
                      child: Text("VIDEO",
                        style: GoogleFonts.boogaloo(
                          color: Colors.white,
                        ),),
                    ),
                    SizedBox(height: 5,),
                    Text("1 min 35 sec",
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),


          ]
      ),
    );
  }
}
