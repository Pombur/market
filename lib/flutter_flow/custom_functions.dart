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
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

int findProduct(
  List<ProductTypeStruct> appState,
  int currentProductId,
) {
  for (int index = 0; index < appState.length; index++) {
    if (appState[index].id == currentProductId) {
      return index;
    }
  }

  return -1;
}

int countTotalItems(List<ProductTypeStruct> appState) {
  int total = 0;

  for (int index = 0; index < appState.length; index++) {
    total += appState[index].quantity;
  }

  return total;
}

double totalSum(List<ProductTypeStruct> appState) {
  double sum = 0;

  for (int index = 0; index < appState.length; index++) {
    sum += appState[index].quantity * appState[index].price;
  }

  return sum;
}

bool? nameEmpt(String? name) {
  // проверка не пустая ли строка
  if (name == null || name.isEmpty) {
    return true;
  } else {
    return false;
  }
}

bool? avatarEmpt(String? avatar) {
  // проверка на на наличие изображения
  if (avatar == null || avatar.isEmpty) {
    return true;
  } else {
    return false;
  }
}

bool minus(int quantityMin) {
  return quantityMin > 1;
}

String? location(LatLng? poi) {
  // convert lantitude and longitude to string
  if (poi == null) {
    return null;
  }
  return '${poi.latitude},${poi.longitude}';
}

String? separationLongitude(LatLng? longitude) {
  // siparate. return only lngitude
  if (longitude != null) {
    return longitude.longitude.toString();
  } else {
    return null;
  }
}

LatLng? splitLocation(
  String? lan,
  String? lon,
) {
  // setting the value for location. lan is lantitudia, lon is longitude
  if (lan != null && lon != null) {
    final latitude = double.tryParse(lan);
    final longitude = double.tryParse(lon);
    if (latitude != null && longitude != null) {
      return LatLng(latitude, longitude);
    }
  }
  return null;
}

String? separationLatitude(LatLng? latitude) {
  // siparated. return only latitude
  if (latitude == null) {
    return null;
  }
  return latitude.latitude.toString();
}
