import 'package:flutter/material.dart';
import 'package:login_ui/pages/sign_up_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
static const String id = "loginPage";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
             begin: Alignment.topLeft,
             end: Alignment.topRight,
            colors: [
              Colors.green.shade900,
              Colors.green,
              Colors.green.shade400
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [ //#login text
                      SizedBox(height: 30,),
                      Text("Login", style: TextStyle(fontSize: 35, color: Colors.white),),
                      SizedBox(height: 7.5,),
                      Text("Welcome back", style: TextStyle(fontSize: 20, color: Colors.white),),
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
                            height: 100,
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
                                    hintText: "Email",
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
                            onPressed:(){
                              Navigator.of(context).pushNamed(SignUpPage.id);
                            },
                            height: 50,
                            minWidth: 250,
                            child: Text("Log in",),
                            textColor: Colors.white,
                            shape: StadiumBorder(),
                            color: Colors.green,
                          ),
                          SizedBox(height: 20,),
                          MaterialButton(
                            onPressed:(){},
                            height: 50,
                            minWidth: 250,
                            child: Text("Log in with sms",),
                            textColor: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 20,),
                              MaterialButton(
                                onPressed:(){},
                                height: 50,
                                minWidth: 150,
                                child: Text("FaceBook",),
                                textColor: Colors.white,
                                shape: StadiumBorder(),
                                color: Colors.blue,
                              ),
                              MaterialButton(
                                onPressed:(){

                                },
                                height: 50,
                                minWidth: 150,
                                child: Text("GitHub",),
                                textColor: Colors.white,
                                shape: StadiumBorder(),
                                color: Colors.black,
                              ),
                              SizedBox(width: 20,),
                            ],
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
