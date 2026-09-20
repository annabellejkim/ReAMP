import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double calculateRecoveryScore(
  double sleep,
  double mood,
  double energy,
  double focus,
  double fatigue,
  double soreness,
) {
  final total = sleep + mood + energy + focus + fatigue + soreness;

  return double.parse((((total / 30.0) * 100).toStringAsFixed(1)));
}

int getDayNumber(DateTime date) {
  return date.weekday;
}

DateTime getWeekStart(DateTime date) {
  final normalized = DateTime(date.year, date.month, date.day);
  final daysSinceSunday = normalized.weekday % 7;

  return normalized.subtract(Duration(days: daysSinceSunday));
}

DateTime getPreviousWeekStart(DateTime date) {
  final normalized = DateTime(date.year, date.month, date.day);
  final daysSinceSunday = normalized.weekday % 7;

  final currentWeekStart = normalized.subtract(Duration(days: daysSinceSunday));

  return currentWeekStart.subtract(const Duration(days: 7));
}

double scoreToProgress(double score) {
  return score / 100;
}
