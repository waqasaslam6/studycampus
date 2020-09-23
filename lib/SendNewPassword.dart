import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/CreateAccount.dart';
import 'package:studycampus/Login.dart';


class SendNewPassword extends StatefulWidget {
  @override
  _SendNewPasswordState createState() => _SendNewPasswordState();
}

class _SendNewPasswordState extends State<SendNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f2a47),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1f2a47),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/logo.png",
                width: MediaQuery.of(context).size.width/3,),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 20,right: 20),
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                    ),
                    MaterialButton(
                      height: 45,
                      onPressed: (){
                        showDialog(context: context, child:
                        new AlertDialog(
                          content: new Text("Votre nouveau mot de passe a été envoyé sur votre boite mail. Vous pourrez le modifier dans votre compte personnel STUDY CAMPUS après connexion"),
                        actions: <Widget>[
                          MaterialButton(
                          padding: EdgeInsets.only(left: 20,right: 20),
                            onPressed: ()
                            {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                                    (Route<dynamic> route) => false,
                              );
                            },
                            child: Text("OK",
                            style: TextStyle(
                              color: Colors.white,

                            ),),
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                        )
                        );
                      },
                      color: Theme.of(context).primaryColor,
                      child: Text("Nouveau mot de passe",
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
                    child: Text("CRÉER UN COMPTE",
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
      ),
    );
  }
}
