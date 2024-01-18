import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'passport_date_widget.dart' show PassportDateWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PassportDateModel extends FlutterFlowModel<PassportDateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for adress widget.
  FocusNode? adressFocusNode;
  TextEditingController? adressController;
  String? Function(BuildContext, String?)? adressControllerValidator;
  // State field(s) for dinamicLwL widget.
  FocusNode? dinamicLwLFocusNode;
  TextEditingController? dinamicLwLController;
  String? Function(BuildContext, String?)? dinamicLwLControllerValidator;
  // State field(s) for statikLwL widget.
  FocusNode? statikLwLFocusNode;
  TextEditingController? statikLwLController;
  String? Function(BuildContext, String?)? statikLwLControllerValidator;
  // State field(s) for Filtr widget.
  FocusNode? filtrFocusNode;
  TextEditingController? filtrController;
  String? Function(BuildContext, String?)? filtrControllerValidator;
  // State field(s) for debit widget.
  FocusNode? debitFocusNode;
  TextEditingController? debitController;
  final debitMask = MaskTextInputFormatter(mask: '#.###');
  String? Function(BuildContext, String?)? debitControllerValidator;
  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for descript widget.
  FocusNode? descriptFocusNode;
  TextEditingController? descriptController;
  String? Function(BuildContext, String?)? descriptControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    adressFocusNode?.dispose();
    adressController?.dispose();

    dinamicLwLFocusNode?.dispose();
    dinamicLwLController?.dispose();

    statikLwLFocusNode?.dispose();
    statikLwLController?.dispose();

    filtrFocusNode?.dispose();
    filtrController?.dispose();

    debitFocusNode?.dispose();
    debitController?.dispose();

    descriptFocusNode?.dispose();
    descriptController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
