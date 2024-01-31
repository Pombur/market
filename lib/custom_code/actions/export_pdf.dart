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

Future exportPdf(WellsViewRow wellRow) async {
  // Загрузка шрифта, поддерживающего кириллицу
  final font = await PdfGoogleFonts.nunitoExtraBold();

  final pdf = pw.Document();

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(
                'Паспорт скважины',
                style: pw.TextStyle(font: font, fontSize: 30),
              ),
              pw.Text(
                '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}',
                style: pw.TextStyle(fontSize: 15),
              ),
            ],
          ),
          pw.Divider(thickness: 2),
          pw.SizedBox(height: 35), // Adjust the height as needed
          pw.Text('Адрес: ' + wellRow.adres.toString(),
              style: pw.TextStyle(font: font), textAlign: pw.TextAlign.left),
          pw.SizedBox(height: 25), // Adjust the height as needed
          pw.Text('Тип скважины: ' + wellRow.type.toString(),
              style: pw.TextStyle(font: font), textAlign: pw.TextAlign.left),
          pw.SizedBox(height: 25), // Adjust the height as needed
          pw.Text('Глубина: ' + wellRow.dinamicLvL.toString() + ' метров',
              style: pw.TextStyle(font: font), textAlign: pw.TextAlign.left),
          pw.SizedBox(height: 25), // Adjust the height as needed
          pw.Text(
              'Статический уровень: ' + wellRow.statk.toString() + ' метров',
              style: pw.TextStyle(font: font),
              textAlign: pw.TextAlign.left),
          pw.SizedBox(height: 25), // Adjust the height as needed
          pw.Text('Дебет: ' + wellRow.debit.toString() + ' м³/ч',
              style: pw.TextStyle(font: font), textAlign: pw.TextAlign.left),
          pw.SizedBox(height: 25), // Adjust the height as needed
          pw.Text('Тип фильтровой зоны: ' + wellRow.fltr.toString(),
              style: pw.TextStyle(font: font), textAlign: pw.TextAlign.left),
          pw.SizedBox(height: 25), // Adjust the height as needed
          pw.Text('Описание: ' + wellRow.descript.toString(),
              style: pw.TextStyle(font: font), textAlign: pw.TextAlign.left),
        ],
      );
    },
  ));

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
