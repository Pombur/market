import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_user_widget.dart' show SearchUserWidget;
import 'package:flutter/material.dart';

class SearchUserModel extends FlutterFlowModel<SearchUserWidget> {
  ///  Local state fields for this page.

  List<dynamic> searchResultStateUser = [];
  void addToSearchResultStateUser(dynamic item) =>
      searchResultStateUser.add(item);
  void removeFromSearchResultStateUser(dynamic item) =>
      searchResultStateUser.remove(item);
  void removeAtIndexFromSearchResultStateUser(int index) =>
      searchResultStateUser.removeAt(index);
  void insertAtIndexInSearchResultStateUser(int index, dynamic item) =>
      searchResultStateUser.insert(index, item);
  void updateSearchResultStateUserAtIndex(
          int index, Function(dynamic) updateFn) =>
      searchResultStateUser[index] = updateFn(searchResultStateUser[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (SearchUSER)] action in Search_User widget.
  ApiCallResponse? apiResult7sf;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
