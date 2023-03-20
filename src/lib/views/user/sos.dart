import 'dart:async';
import 'package:src/blocs/auth/auth.bloc.dart';
import 'package:src/shared/custom_components.dart';
import 'package:src/shared/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// class SOS extends StatefulWidget {
//   static const routeName = '/sos';
//   @override
//   SOSState createState() => SOSState();
// }
class sos extends StatefulWidget {

  static const routeName = '/sos';

  @override

  SosState createState() => SosState();

}
class SosState extends State<sos> 
{  
  bool isAdmin = false;
  String msg = 'SOS';  
  //@override
  // showMessage(bool msgVisible, msgType, message) {
  //   messageVisible = msgVisible;
  //   setState(() {
  //     messageType = msgType == "error"
  //         ? cMessageType.error.toString()
  //         : cMessageType.success.toString();
  //     messageTxt = message;
  //   });
  // }
   @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = AuthBloc();
    return new Scaffold(
    appBar: AppBar(title: const Text(cSOS)),
      drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: isAdmin
              // ? adminNav(context, authBloc)
              ? CustomAdminDrawer()
              : CustomGuestDrawer()),
            body: Center(
        child: Material(
          child: Container(
              margin: EdgeInsets.all(20.0),
              child: authBloc.isSignedIn()
                  ? sos_button(authBloc)
                  : sos_button(authBloc)),
        ),
      ),
    );
  }
  Widget sos_button(AuthBloc authBloc) {
    return Column(
      children: [
        SizedBox(width: 10, height: 50),
        ElevatedButton(
          child: Text('EMERGENCY'),
          onPressed: () {
            return new Text("Noooooo");  // Sanjana DO
          },
        )
      ],
    );
  }
  
  void showMessage(bool bool, String s, String t) {}
}