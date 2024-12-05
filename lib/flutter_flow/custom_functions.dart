import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? formataVolts(List<int> values) {
  double sum = values.reduce((value, element) => value + element).toDouble();
  double average = sum / values.length;

  double voltage = (average / 1024) * 5; //* 127;

  return double.parse(voltage.toStringAsFixed(2));
}

String? loop() {
  // preciso de uma function que rode em segundo plano e atualize o 'refresh database a cada 5s' e fique constamente executando em loop
  void refreshDatabase() {
    Future.delayed(Duration(seconds: 5), () {
      // Code to refresh database goes here
      refreshDatabase();
    });
  }

  refreshDatabase();
  return '';
}
