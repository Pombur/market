import '/backend/backend.dart';
import '/components/map_bottom_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'map_poi_copy_model.dart';
export 'map_poi_copy_model.dart';

class MapPoiCopyWidget extends StatefulWidget {
  const MapPoiCopyWidget({super.key});

  @override
  _MapPoiCopyWidgetState createState() => _MapPoiCopyWidgetState();
}

class _MapPoiCopyWidgetState extends State<MapPoiCopyWidget> {
  late MapPoiCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapPoiCopyModel());

    getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: const Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: SpinKitFadingCircle(
              color: Color(0x7EF1F4F8),
              size: 50.0,
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.clear,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: Text(
              'Well\'s',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleLargeFamily),
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    FutureBuilder<List<WellsRecord>>(
                      future: (_model.firestoreRequestCompleter ??=
                              Completer<List<WellsRecord>>()
                                ..complete(queryWellsRecordOnce(
                                  queryBuilder: (wellsRecord) =>
                                      wellsRecord.where(
                                    'type',
                                    isEqualTo: _model.dropDownValue != ''
                                        ? _model.dropDownValue
                                        : null,
                                  ),
                                )))
                          .future,
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Image.asset(
                              'assets/images/Eftv7cMoRuGUvvNoiYZn_noun_water-well_1857123_000000.png',
                            ),
                          );
                        }
                        List<WellsRecord> googleMapWellsRecordList =
                            snapshot.data!;
                        return FlutterFlowGoogleMap(
                          controller: _model.googleMapsController,
                          onCameraIdle: (latLng) =>
                              _model.googleMapsCenter = latLng,
                          initialLocation: _model.googleMapsCenter ??=
                              currentUserLocationValue!,
                          markers: googleMapWellsRecordList
                              .map(
                                (googleMapWellsRecord) => FlutterFlowMarker(
                                  googleMapWellsRecord.reference.path,
                                  googleMapWellsRecord.location!,
                                  () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                            child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: MapBottomWidget(
                                              location: googleMapWellsRecord,
                                            ),
                                          ),
                                        ));
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                ),
                              )
                              .toList(),
                          markerColor: GoogleMarkerColor.violet,
                          mapType: MapType.hybrid,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14.0,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: true,
                          showCompass: true,
                          showMapToolbar: true,
                          showTraffic: false,
                          centerMapOnMarkerTap: false,
                        );
                      },
                    ),
                    PointerInterceptor(
                      intercepting: isWeb,
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(null),
                        options: const [
                          'Абиссинская',
                          'Погружной',
                          'Разведка',
                          'Иное...',
                          ''
                        ],
                        onChanged: (val) async {
                          setState(() => _model.dropDownValue = val);
                          setState(
                              () => _model.firestoreRequestCompleter = null);
                          await _model.waitForFirestoreRequestCompleted();
                        },
                        width: 200.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'Тип скважины',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor: const Color(0xE3FFFFFF),
                        elevation: 3.0,
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderWidth: 3.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
