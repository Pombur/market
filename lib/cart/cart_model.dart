import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  int currentProductId = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputNotes widget.
  FocusNode? inputNotesFocusNode;
  TextEditingController? inputNotesController;
  String? Function(BuildContext, String?)? inputNotesControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  OrderRow? orderId;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputNotesFocusNode?.dispose();
    inputNotesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
