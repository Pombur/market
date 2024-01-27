import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'stop_watch_wiget_model.dart';
export 'stop_watch_wiget_model.dart';

class StopWatchWigetWidget extends StatefulWidget {
  const StopWatchWigetWidget({super.key});

  @override
  State<StopWatchWigetWidget> createState() => _StopWatchWigetWidgetState();
}

class _StopWatchWigetWidgetState extends State<StopWatchWigetWidget> {
  late StopWatchWigetModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StopWatchWigetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 990),
        curve: Curves.easeIn,
        constraints: const BoxConstraints(
          minWidth: double.infinity,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0x34111417),
              offset: Offset(0.0, -2.0),
            )
          ],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(15.0, 12.0, 15.0, 2.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FutureBuilder<List<ProductRow>>(
                future: ProductTable().queryRows(
                  queryFn: (q) => q,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return const Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitFadingCircle(
                          color: Color(0x7EF1F4F8),
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<ProductRow> carouselProductRowList = snapshot.data!;
                  return SizedBox(
                    width: double.infinity,
                    height: 80.0,
                    child: CarouselSlider.builder(
                      itemCount: carouselProductRowList.length,
                      itemBuilder: (context, carouselIndex, _) {
                        final carouselProductRow =
                            carouselProductRowList[carouselIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Product_detall',
                              queryParameters: {
                                'productID': serializeParam(
                                  carouselProductRow.id,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          onLongPress: () async {
                            await _model.carouselController?.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              carouselProductRow.image!,
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      carouselController: _model.carouselController ??=
                          CarouselController(),
                      options: CarouselOptions(
                        initialPage: min(1, carouselProductRowList.length - 1),
                        viewportFraction: 0.5,
                        disableCenter: true,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.25,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        autoPlayInterval: const Duration(milliseconds: (800 + 4000)),
                        autoPlayCurve: Curves.linear,
                        pauseAutoPlayInFiniteScroll: true,
                        onPageChanged: (index, _) =>
                            _model.carouselCurrentIndex = index,
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: FutureBuilder<List<TextContentRow>>(
                  future: TextContentTable().querySingleRow(
                    queryFn: (q) => q,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return const Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitFadingCircle(
                            color: Color(0x7EF1F4F8),
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<TextContentRow> columnTextContentRowList =
                        snapshot.data!;
                    final columnTextContentRow =
                        columnTextContentRowList.isNotEmpty
                            ? columnTextContentRowList.first
                            : null;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                columnTextContentRow!.stopWathTitul,
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          columnTextContentRow.stopWatchText,
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 10.0),
                child: FutureBuilder<List<UserInfoRow>>(
                  future: UserInfoTable().querySingleRow(
                    queryFn: (q) => q,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return const Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitFadingCircle(
                            color: Color(0x7EF1F4F8),
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<UserInfoRow> buttonUserInfoRowList = snapshot.data!;
                    final buttonUserInfoRow = buttonUserInfoRowList.isNotEmpty
                        ? buttonUserInfoRowList.first
                        : null;
                    return FFButtonWidget(
                      onPressed: () async {
                        currentUserLocationValue = await getCurrentUserLocation(
                            defaultLocation: const LatLng(0.0, 0.0));
                        setState(() {
                          FFAppState().StopWatch = FFAppState().StopWatch;
                          FFAppState().location = FFAppState().location;
                        });
                        if (await getPermissionStatus(locationPermission)) {
                          context.pushNamed(
                            'PassportDate',
                            queryParameters: {
                              'debitWath': serializeParam(
                                formatNumber(
                                  FFAppState().StopWatch,
                                  formatType: FormatType.custom,
                                  format: '#0.0##',
                                  locale: '',
                                ),
                                ParamType.String,
                              ),
                              'location': serializeParam(
                                currentUserLocationValue?.toString(),
                                ParamType.String,
                              ),
                              'idWell': serializeParam(
                                0.0,
                                ParamType.double,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return WebViewAware(
                                child: AlertDialog(
                                  title: const Text('Уведомление!'),
                                  content: const Text(
                                      'На устройстве отключена синхронизация таймера.  Предоставте разрешение!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }
                      },
                      text: 'Сохранить',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xC315161E),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: const Color(0xFFE5E7EB),
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        elevation: 2.0,
                        borderSide: const BorderSide(
                          color: Color(0xFFE5E7EB),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
