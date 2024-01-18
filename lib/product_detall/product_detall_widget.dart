import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/product_active_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'product_detall_model.dart';
export 'product_detall_model.dart';

class ProductDetallWidget extends StatefulWidget {
  const ProductDetallWidget({
    super.key,
    required this.productID,
  });

  final int? productID;

  @override
  _ProductDetallWidgetState createState() => _ProductDetallWidgetState();
}

class _ProductDetallWidgetState extends State<ProductDetallWidget>
    with TickerProviderStateMixin {
  late ProductDetallModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.5, 1.5),
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 620.ms,
          duration: 820.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(-40.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetallModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return FutureBuilder<List<ProductDetailViewRow>>(
      future: ProductDetailViewTable().querySingleRow(
        queryFn: (q) => q.eq(
          'product_id',
          widget.productID,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: const Center(
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
        List<ProductDetailViewRow> productDetallProductDetailViewRowList =
            snapshot.data!;
        final productDetallProductDetailViewRow =
            productDetallProductDetailViewRowList.isNotEmpty
                ? productDetallProductDetailViewRowList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: const Icon(
                            Icons.clear,
                            color: Color(0xC815161E),
                            size: 30.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 3.0, 18.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Cart');
                              },
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      children: [
                                        Icon(
                                          Icons.shopping_cart_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 45.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 30.0),
                                          child: Text(
                                            functions
                                                .countTotalItems(FFAppState()
                                                    .shopingCart
                                                    .toList())
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: const Color(0xFFF42F1D),
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w800,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          )
                                              .animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation']!)
                                              .animateOnActionTrigger(
                                                animationsMap[
                                                    'textOnActionTriggerAnimation']!,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Container(
                    height: 200.0,
                    decoration: const BoxDecoration(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    productDetallProductDetailViewRow
                                        ?.productImage,
                                    'https://kctvhrmzireulhshjrqh.supabase.co/storage/v1/object/public/abi/categories/Product/splash.png',
                                  ),
                                  width: 380.0,
                                  height: 200.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['containerOnPageLoadAnimation']!),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    productDetallProductDetailViewRow
                                        ?.productImage1,
                                    'https://kctvhrmzireulhshjrqh.supabase.co/storage/v1/object/public/abi/categories/Product/splash.png',
                                  ),
                                  width: 380.0,
                                  height: 200.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    productDetallProductDetailViewRow
                                        ?.productImage2,
                                    'https://kctvhrmzireulhshjrqh.supabase.co/storage/v1/object/public/abi/categories/Product/splash.png',
                                  ),
                                  width: 380.0,
                                  height: 200.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  productDetallProductDetailViewRow
                                      ?.productImage3,
                                  'https://kctvhrmzireulhshjrqh.supabase.co/storage/v1/object/public/abi/categories/Product/splash.png',
                                ),
                                width: 380.0,
                                height: 200.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            productDetallProductDetailViewRow?.productName,
                            '_',
                          ),
                          style: FlutterFlowTheme.of(context).headlineMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          productDetallProductDetailViewRow!.productDesc!,
                          style: FlutterFlowTheme.of(context).labelLarge,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  formatNumber(
                                    productDetallProductDetailViewRow
                                        .productPrice,
                                    formatType: FormatType.custom,
                                    format: '',
                                    locale: '',
                                  ),
                                  'price',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 25.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.currency_ruble,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 32.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Text(
                              valueOrDefault<String>(
                                '(${formatNumber(
                                  productDetallProductDetailViewRow
                                      .averageRating,
                                  formatType: FormatType.custom,
                                  format: '##.0#',
                                  locale: '',
                                )}) ${productDetallProductDetailViewRow.reviewCount?.toString()} Отзывы',
                                'Отзывов пока нет',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    fontSize: 16.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FutureBuilder<List<ReviewsRow>>(
                        future: ReviewsTable().queryRows(
                          queryFn: (q) => q
                              .eq(
                                'product_id',
                                widget.productID,
                              )
                              .order('created_at'),
                          limit: 3,
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
                          List<ReviewsRow> reviewsListReviewsRowList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: reviewsListReviewsRowList.length,
                            itemBuilder: (context, reviewsListIndex) {
                              final reviewsListReviewsRow =
                                  reviewsListReviewsRowList[reviewsListIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.star_rate_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      size: 24.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      reviewsListReviewsRow.rating!.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          3.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  40.0, 0.0, 0.0, 0.0),
                                          child: AutoSizeText(
                                            reviewsListReviewsRow.review!
                                                .maybeHandleOverflow(
                                              maxChars: 50,
                                              replacement: '…',
                                            ),
                                            maxLines: 2,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            minFontSize: 6.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 24.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (productDetallProductDetailViewRow.active ==
                                  true) {
                                if (functions
                                        .findProduct(
                                            FFAppState().shopingCart.toList(),
                                            widget.productID!)
                                        .toString() ==
                                    '-1') {
                                  // add new product to cart
                                  setState(() {
                                    FFAppState()
                                        .addToShopingCart(ProductTypeStruct(
                                      id: widget.productID,
                                      name: productDetallProductDetailViewRow
                                          .productName,
                                      quantity: 1,
                                      price: productDetallProductDetailViewRow
                                          .productPrice,
                                      image: productDetallProductDetailViewRow
                                          .productImage,
                                      email: productDetallProductDetailViewRow
                                          .email,
                                    ));
                                  });
                                } else {
                                  setState(() {
                                    FFAppState().updateShopingCartAtIndex(
                                      functions.findProduct(
                                          FFAppState().shopingCart.toList(),
                                          widget.productID!),
                                      (e) => e..incrementQuantity(1),
                                    );
                                  });
                                }

                                if (animationsMap[
                                        'textOnActionTriggerAnimation'] !=
                                    null) {
                                  await animationsMap[
                                          'textOnActionTriggerAnimation']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: const WebViewAware(
                                          child: SizedBox(
                                        height: 300.0,
                                        width: 220.0,
                                        child: ProductActiveWidget(),
                                      )),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              }
                            },
                            text: 'В Корзину',
                            options: FFButtonOptions(
                              width: 200.0,
                              height: 60.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0x8815161E),
                              textStyle: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineSmallFamily,
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .headlineSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
