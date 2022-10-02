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

int newExhibtionCount(List<ExhibitionListRecord> exhibitionDocuments) {
  // Add your function code here!
  List<ExhibitionListRecord> newExhibitions = [];
  var now = DateTime.now();
  final lastWeek = now.subtract(const Duration(days: 1));

  if (exhibitionDocuments.isEmpty) {
    return 0;
  } else {
    newExhibitions.addAll(
        (exhibitionDocuments.where((i) => i.createdTime!.isAfter(lastWeek))));
    return newExhibitions.length;
  }
}

String getFileName(String url) {
  // Add your function code here!
  var completePath = url;
  var fileName = (completePath.split('/').last);
  return fileName;
}
