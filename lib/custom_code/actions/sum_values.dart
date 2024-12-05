// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String sumValues(List<int> records) {
  double sum = 0;

  for (var record in records) {
    sum += (record ?? 0).toDouble();
  }

  sum = sum / records.length / 1023 * 5;

  String formattedSum = sum.toStringAsFixed(2).replaceAll('.', ',');

  return formattedSum + 'V';
}
