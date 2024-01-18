import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_results_widget.dart' show SearchResultsWidget;
import 'package:flutter/material.dart';

class SearchResultsModel extends FlutterFlowModel<SearchResultsWidget> {
  ///  Local state fields for this page.

  List<dynamic> searchResultState = [];
  void addToSearchResultState(dynamic item) => searchResultState.add(item);
  void removeFromSearchResultState(dynamic item) =>
      searchResultState.remove(item);
  void removeAtIndexFromSearchResultState(int index) =>
      searchResultState.removeAt(index);
  void insertAtIndexInSearchResultState(int index, dynamic item) =>
      searchResultState.insert(index, item);
  void updateSearchResultStateAtIndex(int index, Function(dynamic) updateFn) =>
      searchResultState[index] = updateFn(searchResultState[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (SearchAPI)] action in Search_results widget.
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
