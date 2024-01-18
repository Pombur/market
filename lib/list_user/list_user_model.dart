import '/flutter_flow/flutter_flow_util.dart';
import 'list_user_widget.dart' show ListUserWidget;
import 'package:flutter/material.dart';

class ListUserModel extends FlutterFlowModel<ListUserWidget> {
  ///  Local state fields for this page.

  List<dynamic> searchUserState = [];
  void addToSearchUserState(dynamic item) => searchUserState.add(item);
  void removeFromSearchUserState(dynamic item) => searchUserState.remove(item);
  void removeAtIndexFromSearchUserState(int index) =>
      searchUserState.removeAt(index);
  void insertAtIndexInSearchUserState(int index, dynamic item) =>
      searchUserState.insert(index, item);
  void updateSearchUserStateAtIndex(int index, Function(dynamic) updateFn) =>
      searchUserState[index] = updateFn(searchUserState[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputController;
  String? Function(BuildContext, String?)? inputControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputFocusNode?.dispose();
    inputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
