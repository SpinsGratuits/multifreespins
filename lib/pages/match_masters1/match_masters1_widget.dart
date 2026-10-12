import '/backend/api_requests/api_calls.dart';
import '/components/flou_refresh_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'match_masters1_model.dart';
export 'match_masters1_model.dart';

class MatchMasters1Widget extends StatefulWidget {
  const MatchMasters1Widget({super.key});

  static String routeName = 'MatchMasters1';
  static String routePath = '/matchMasters1';

  @override
  State<MatchMasters1Widget> createState() => _MatchMasters1WidgetState();
}

class _MatchMasters1WidgetState extends State<MatchMasters1Widget>
    with TickerProviderStateMixin {
  late MatchMasters1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchMasters1Model());

    animationsMap.addAll({
      'imageOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.92, 0.92),
          ),
          FadeEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 1.0,
            end: 0.9,
          ),
        ],
      ),
      'imageOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Container(
            width: 510.0,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF1700BB),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
              children: [
                Container(
                  height: 99.0,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.sizeOf(context).width * 1.0,
                    minHeight: 99.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assets/images/header.jpg',
                      ).image,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: Image.asset(
                          'assets/images/Fondmilieu1.jpg',
                        ).image,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 130.0,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    (FFMainAxisAlignment.center).flutterValue,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation1'] !=
                                          null) {
                                        await animationsMap[
                                                'imageOnActionTriggerAnimation1']!
                                            .controller
                                            .forward(from: 0.0)
                                            .whenComplete(animationsMap[
                                                    'imageOnActionTriggerAnimation1']!
                                                .controller
                                                .reverse);
                                      }
                                      HapticFeedback.vibrate();

                                      context.goNamed(
                                        AccueilWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.leftToRight,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Back.gif',
                                        width: 55.0,
                                        height: 55.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'imageOnActionTriggerAnimation1']!,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.asset(
                                          'assets/images/Matchmasterslogo.jpg',
                                          width: 230.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      HapticFeedback.vibrate();
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation2'] !=
                                          null) {
                                        animationsMap[
                                                'imageOnActionTriggerAnimation2']!
                                            .controller
                                          ..reset()
                                          ..repeat();
                                      }
                                      FFAppState().globalIsRefreshing = true;
                                      safeSetState(() {});
                                      safeSetState(() =>
                                          _model.apiRequestCompleter = null);
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 3000,
                                        ),
                                      );
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation2'] !=
                                          null) {
                                        animationsMap[
                                                'imageOnActionTriggerAnimation2']!
                                            .controller
                                            .stop();
                                      }
                                      FFAppState().globalIsRefreshing = false;
                                      safeSetState(() {});
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/actualiser.gif',
                                        width: 55.0,
                                        height: 55.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'imageOnActionTriggerAnimation2']!,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 300.0,
                                decoration: BoxDecoration(),
                                child: Stack(
                                  children: [
                                    FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(
                                                    GithubmatchmastersCall
                                                        .call()))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGithubmatchmastersResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final listeboutonmastermatchs =
                                                getJsonField(
                                              listViewGithubmatchmastersResponse
                                                  .jsonBody,
                                              r'''$''',
                                            ).toList();

                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              itemCount: listeboutonmastermatchs
                                                  .length,
                                              itemBuilder: (context,
                                                  listeboutonmastermatchsIndex) {
                                                final listeboutonmastermatchsItem =
                                                    listeboutonmastermatchs[
                                                        listeboutonmastermatchsIndex];
                                                return Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6.0,
                                                            color: Color(
                                                                0x7F000000),
                                                            offset: Offset(
                                                              0.0,
                                                              4.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                      ),
                                                      child: Opacity(
                                                        opacity: FFAppState()
                                                                .Boutonsvisites
                                                                .contains(
                                                                    getJsonField(
                                                                  listeboutonmastermatchsItem,
                                                                  r'''$.lienurl''',
                                                                ).toString())
                                                            ? 0.4
                                                            : 1.0,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFFFFF7C2),
                                                                Color(
                                                                    0xFFFFB300)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              FFAppState()
                                                                      .Globalanimationcoin =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                              await Future
                                                                  .delayed(
                                                                Duration(
                                                                  milliseconds:
                                                                      1000,
                                                                ),
                                                              );
                                                              FFAppState()
                                                                      .Globalanimationcoin =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                              await launchURL(
                                                                  getJsonField(
                                                                listeboutonmastermatchsItem,
                                                                r'''$.lienurl''',
                                                              ).toString());
                                                              FFAppState()
                                                                  .addToBoutonsvisites(
                                                                      getJsonField(
                                                                listeboutonmastermatchsItem,
                                                                r'''$.lienurl''',
                                                              ).toString());
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text:
                                                                '${getJsonField(
                                                              listeboutonmastermatchsItem,
                                                              r'''$.date_scraping1''',
                                                            ).toString()} ${getJsonField(
                                                              listeboutonmastermatchsItem,
                                                              r'''$.badge''',
                                                            ).toString()}',
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.5,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Color(
                                                                            0xFF3E2723),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        shadows: [
                                                                          Shadow(
                                                                            color:
                                                                                Colors.black,
                                                                            offset:
                                                                                Offset(0.0, 1.0),
                                                                            blurRadius:
                                                                                4.0,
                                                                          )
                                                                        ],
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                              hoverColor: Color(
                                                                  0x34FFFFFF),
                                                              hoverElevation:
                                                                  4.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    wrapWithModel(
                                      model: _model.flouRefreshModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FlouRefreshWidget(
                                        parameter1: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (FFAppState().Globalanimationcoin)
                          Lottie.asset(
                            'assets/jsons/Coins_blow_effect.json',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            fit: BoxFit.cover,
                            repeat: false,
                            animate: FFAppState().Globalanimationcoin,
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 128.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 128.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-6077739467137252/8190572438',
                    androidAdUnitID: 'ca-app-pub-6077739467137252/1951362529',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
