import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/CreateAccount.dart';
import 'package:studycampus/Dashboard.dart';
import 'package:studycampus/SendNewPassword.dart';
import 'package:studycampus/VillesExplorer.dart';
import 'package:studycampus/cities/LAROCHELLE.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {

  Future<bool> _onBackPressed() async {
    // Your back press code here...

    Navigator.push(context, MaterialPageRoute(
        builder: (context) => LAROCHELLE()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1f2a47),
         leading: IconButton(
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(
                 builder: (context) => LAROCHELLE()
             ));
           },
           icon: Icon(Icons.arrow_back,color: Colors.white,),
         ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: Color(0xff1f2a47),
               // height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/logo.png",
                      width: MediaQuery.of(context).size.width/4,),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 5),
                      height: MediaQuery.of(context).size.height*0.35,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              prefixIcon: Image.asset("assets/icons/mail.png",scale: 9,),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Mot de passe",
                              prefixIcon: Image.asset("assets/icons/padlock.png",scale: 20,),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                          GestureDetector(
                            onTap: ()
                            {

                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>SendNewPassword()
                              ));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text("Mot de passe oublié ?",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                          ),
                          MaterialButton(
                            height: 45,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>Dashboard()
                              ));
                            },
                            color: Theme.of(context).primaryColor,
                            child: Text("Se connecter",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),),
                            padding: EdgeInsets.only(left: 20,right: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Vous n'avez pas encore de compte ?",
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.grey[300]
                          ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: ()
                          {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => CreateAccount()
                            ));
                          },
                          child: Text("créer un compte",
                            style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 150,
                                child: Divider(color: Colors.grey,thickness: 1,)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("ou",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                           Container(
                             width: 150,
                               child: Divider(color: Colors.grey,thickness: 1,)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: MaterialButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            color: Color(0xff385ca9),
                            child: Text("Continuer avec Facebook",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: MaterialButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            color: Color(0xffd94336),
                            child: Text("Continuer avec Google",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }

}