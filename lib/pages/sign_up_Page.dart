import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
static const String id = "Sign up";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isLoading  = false;
  void fireToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Colors.grey.shade400,
                  Colors.grey,
                  Colors.grey.shade900
                ],
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child:Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [ //#login text

                      SizedBox(height: 30,width:320,),
                      Text("Sign up", style: TextStyle(fontSize: 35, color: Colors.white),),
                      SizedBox(height: 7.5,),
                      Text("Welcome", style: TextStyle(fontSize: 20, color: Colors.white),),
                    ],
                  ),
                ), ),
              Expanded(
                flex: 3,
                child:Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50),),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 60),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow:[ BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                blurRadius: 20,
                                spreadRadius: 10,
                                offset: Offset(0,10)
                            ),
                            ],
                          ),
                          child: Column(
                            children:  [
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Fullname",
                                ),
                              ),
                              Divider(color: Colors.black,height: 1,),
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                ),
                              ),
                              Divider(color: Colors.black,height: 1,),
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Phone",
                                ),
                              ),
                              Divider(color: Colors.black,height: 1,),
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        MaterialButton(
                          onPressed:(){},
                          height: 50,
                          minWidth: 250,
                          child: Text("SignUp",),
                          textColor: Colors.white,
                          shape: StadiumBorder(),
                          color: Colors.grey.shade700,
                        ),
                        SizedBox(height: 20,),
                        MaterialButton(
                          onPressed:(){},
                          height: 50,
                          minWidth: 250,
                          child: Text("Sign up with sns",),
                          textColor: Colors.grey,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 20,),
                            MaterialButton(
                              onPressed:(){},
                              height: 45,
                              minWidth: 100,
                              child: Text("FaceBook",),
                              textColor: Colors.white,
                              shape: StadiumBorder(),
                              color: Colors.blue,
                            ),
                            MaterialButton(
                              onPressed:(){

                              },
                              height: 45,
                              minWidth: 100,
                              child: Text("Google",),
                              textColor: Colors.white,
                              shape: StadiumBorder(),
                              color: Colors.green,
                            ),
                            MaterialButton(
                              onPressed:(){

                              },
                              height: 45,
                              minWidth: 100,
                              child: Text("Apple",),
                              textColor: Colors.white,
                              shape: StadiumBorder(),
                              color: Colors.black,
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
     SizedBox(height: 30,),
     RichText(
    text: TextSpan(
    text: "Sign up ",
    style: TextStyle(color: Colors.black, fontSize: 20),
    children: [
    TextSpan(
    text: "#Page",
    style: TextStyle(
    color: Colors.blueAccent, fontWeight: FontWeight.bold),
    recognizer: TapGestureRecognizer()..onTap = () {
    fireToast("Hash tag  #Page");
                              },
                             ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ),
                ), ),
            ],
          ),
        ],
      ),
    );
  }
}
