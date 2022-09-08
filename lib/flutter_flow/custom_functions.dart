import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

bool hasUploadedMedia(String? mediaPath) {
  // Add your function code here!
  return mediaPath != null && mediaPath.isNotEmpty;
}

LatLng getUserLocation(LatLng? userLocation) {
  return LatLng(-16.484360, 145.463310);
}

LatLng location() {
  return LatLng(-16.484360, 145.463310);
}

LatLng markinglocation() {
  return LatLng(-16.484360, 145.463310);
}
