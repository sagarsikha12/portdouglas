// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future<String> generateContentForEmail(
  String? name,
  String? email,
  String? phone,
  String? day,
  String? time,
  String? bookedService,
) async {
  String a =
      "Hi there,  $name with contact details  $email $phone has requested to book for $bookedService on $day at $time. Please Respond in the email listed above or give a quick call to approve the booking. ";
  // Add your function code here!

  return a;
}
