// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future exportToPpf(WellsRow wellRow) async {
  // Add your function code here!
  final pdf = pw.Document();

  pdf.addPage(pw.Page(
      build: (pw.Context context) => pw.Column(
            children: [
              pw.Text('Паспорт скважины'),
              pw.Divider(thickness: 2),
              pw.Text('Адрес : ' + wellRow.adres.toString()),
              pw.Text('Дебит : ' + wellRow.debit.toString()),
            ],
          )));

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}