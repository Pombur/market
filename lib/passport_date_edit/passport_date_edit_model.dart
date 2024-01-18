import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'passport_date_edit_widget.dart' show PassportDateEditWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PassportDateEditModel extends FlutterFlowModel<PassportDateEditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Lat widget.
  FocusNode? latFocusNode;
  TextEditingController? latController;
  final latMask = MaskTextInputFormatter(mask: '##.########');
  String? Function(BuildContext, String?)? latControllerValidator;
  // State field(s) for Lon widget.
  FocusNode? lonFocusNode;
  TextEditingController? lonController;
  final lonMask = MaskTextInputFormatter(mask: '##.########');
  String? Function(BuildContext, String?)? lonControllerValidator;
  // Stores action output result for [Backend Call - API (Geocode)] action in Icon widget.
  ApiCallResponse? apiResultv9f;
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
  // State field(s) for filtr widget.
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
    latFocusNode?.dispose();
    latController?.dispose();

    lonFocusNode?.dispose();
    lonController?.dispose();

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
