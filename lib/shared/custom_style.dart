import 'package:flutter/material.dart';

const cAppTitle = "SALUS";
const cAboutusTitle = "About us";
const cSignupTitle = "Create new account";
const cSettingsTitle = "Settings";
const cRxTitle = "Pharmacy";
const cVaccineTitle = "Vaccine";
const cOPDIPDTitle = "OPD/IPD";
const cMessagesTitle = "Messages";
const cPathologysTitle = "Pathology";
const cAppointment = "Appointments";
const cAdmin = "Admin";
const cPerson = "Personal Data";
const cSOS = "SOS";
const cPRecords = "Records";
const cReports = "Reports";
const cSCM = "Supply Chain";
const cAddressBookTitle = "Address Book";
const cAddressBookAddTitle = "Add Address Book";
const cAddressBookEditTitle = "Edit Address Book";
const cSignUpTitle = "Sign up";
const cBackground = "Background";

enum cMessageType { error, success }

const cNavText = TextStyle(
    color: Colors.blueAccent,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal);
const cNavRightText = TextStyle(
    color: Colors.blueAccent,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal);

const cEmailID = "salus@admin.com";
const cLabel = "Navigation Menu";
const cSampleImage =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJIzlrP5Fm5juFKR3saDL1rYDOV32y5IPF3UWC0CbIEhDgayJzrw";

const cBodyText = TextStyle(
  fontWeight: FontWeight.w400,
  color: Color.fromARGB(255, 123, 170, 170),
);
const cHead = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w200,
  color: Color.fromARGB(255, 4, 172, 194),
);
const cHome = TextStyle(
  fontFamily: 'RobotoMono',
  fontSize: 30.0,
  fontWeight: FontWeight.w200,
  color: Color.fromARGB(255, 5, 184, 76),
);
const cErrorText = TextStyle(
  fontWeight: FontWeight.w400,
  color: Colors.red,
);
const cWarnText = TextStyle(
  fontWeight: FontWeight.w400,
  color: Color.fromARGB(255, 194, 147, 19),
);
const cSuccessText = TextStyle(
  fontWeight: FontWeight.w400,
  color: Colors.green,
);

const cHeaderText = TextStyle(
    color: Color.fromARGB(255, 255, 68, 218),
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal);

const cHeaderWhiteText = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal);

const cHeaderDarkText = TextStyle(
    color: Colors.blueGrey,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal);

var cThemeData = ThemeData(
  primaryColor: Colors.blue,
  //primarySwatch: Colors.white,
  buttonColor: Colors.blue,
  backgroundColor: Colors.white,
  buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
);
