import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/BookOnline.dart';
import 'package:studycampus/Dashboard.dart';
import 'package:studycampus/components/PopupButtons.dart';
import 'package:studycampus/models/ShopModel.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  List<ShopModel> _shopItems = [
    ShopModel(
        name: "100 T-SHIRT",
        image: "assets/images/shirt1.png",
        price: "8\€",
        banner: "OFFRE BDE"
    ),
    ShopModel(
        name: "50 T-SHIRT",
        image: "assets/images/shirt2.png",
        price: "4\€",
        banner: "OFFREBDE"
    ),
    ShopModel(
        name: "20 Cup",
        image: "assets/images/cup.png",
        price: "2\€",
        banner: "ETUDIANT"
    ),
    ShopModel(
        name: "40 T-SHIRT",
        image: "assets/images/shirt1.png",
        price: "1\€",
        banner: "OFFRE BDE"
    ),
    ShopModel(
        name: "80 T-SHIRT",
        image: "assets/images/shirt2.png",
        price: "2\€",
        banner: "OFFRE BDE"
    ),

  ];

  Future<bool> _onBackPressed() async {
    // Your back press code here...

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Color(0xffe0e0e0),
        appBar: AppBar(
          backgroundColor: Color(0xff1f2a47),
          brightness: Brightness.light,
          title: Text("BOUTIQUE",
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
//          IconButton(
//            icon: Icon(Icons.search,color: Colors.white,),
//            onPressed: (){},
//          ),
//          IconButton(
//            icon: Icon(Icons.more_vert,color: Colors.white,),
//            onPressed: (){},
//          ),

          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Flexible(
                child: GridView.builder(
                  itemCount: _shopItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      child: GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BookOnline()),
                          );
                        },
                        child: new GridTile(
                          header: Container(
                            padding: EdgeInsets.only(right: 5,top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Text(_shopItems[index].price,
                                      style: GoogleFonts.lato(
                                        fontSize: 26,
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    Text("PIECE",
                                      style: GoogleFonts.lato(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 14,
                                      ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          footer: Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10),
                              color: Theme.of(context).primaryColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text(_shopItems[index].name,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              )),
                          child: Center(
                            child: ClipRect(
                              child: Banner(
                                message: _shopItems[index].banner,
                                location: BannerLocation.topStart,
                                color: Theme.of(context).primaryColor,
                                child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: new Image.asset(_shopItems[index].image,)),
                              ),
                            ),
                          ), //just for testing, will fill with image later
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
