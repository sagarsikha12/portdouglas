// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future<String> giveEmail(String? selectedOption) async {
  // Add your function code here!
  String a = "sagarsikha12@gmail.com";
  if (selectedOption ==
      "Group Activities(Movie Trips,Fortnightly Foodies,etc.)") {
    a = "basnetsagar977@gmail.com";
  } else if (selectedOption == "Parenting classes, new parents group") {
    a = "12100168@students.koi.edu.au";
  }
  return a;
}
