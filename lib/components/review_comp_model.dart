import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'review_comp_widget.dart' show ReviewCompWidget;
import 'package:flutter/material.dart';

class ReviewCompModel extends FlutterFlowModel<ReviewCompWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputReating widget.
  String? inputReatingValue;
  FormFieldController<String>? inputReatingValueController;
  // State field(s) for inputReview widget.
  FocusNode? inputReviewFocusNode;
  TextEditingController? inputReviewController;
  String? Function(BuildContext, String?)? inputReviewControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputReviewFocusNode?.dispose();
    inputReviewController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
