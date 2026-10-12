import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'parametres_model.dart';
export 'parametres_model.dart';

class ParametresWidget extends StatefulWidget {
  const ParametresWidget({super.key});

  static String routeName = 'Parametres';
  static String routePath = '/parametres';

  @override
  State<ParametresWidget> createState() => _ParametresWidgetState();
}

class _ParametresWidgetState extends State<ParametresWidget>
    with TickerProviderStateMixin {
  late ParametresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParametresModel());

    _model.coinMasterValue = FFAppState().notifcoinmaster;
    _model.piggyValue = FFAppState().notifpiggygo;
    _model.diceValue = FFAppState().notifdicedreams;
    _model.dominoValue = FFAppState().notifdominodreams;
    _model.monopolyValue = FFAppState().notifmonopolygo;
    _model.bingoblitzValue = FFAppState().notifbingoblitz;
    _model.matchmastersValue = FFAppState().notifmatchmasters;
    animationsMap.addAll({
      'imageOnActionTriggerAnimation': AnimationInfo(
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
      child: PopScope(
        canPop: false,
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
                          'assets/images/HeaderAccueil.jpg',
                        ).image,
                      ),
                    ),
                    child: Stack(
                      children: [],
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 65.0,
                              decoration: BoxDecoration(),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-0.94, 0.2),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (animationsMap[
                                                'imageOnActionTriggerAnimation'] !=
                                            null) {
                                          await animationsMap[
                                                  'imageOnActionTriggerAnimation']!
                                              .controller
                                              .forward(from: 0.0)
                                              .whenComplete(animationsMap[
                                                      'imageOnActionTriggerAnimation']!
                                                  .controller
                                                  .reverse);
                                        }
                                        HapticFeedback.vibrate();

                                        context.goNamed(
                                          AccueilWidget.routeName,
                                          extra: <String, dynamic>{
                                            '__transition_info__':
                                                TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .leftToRight,
                                              duration:
                                                  Duration(milliseconds: 600),
                                            ),
                                          },
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Back.gif',
                                          width: 55.0,
                                          height: 55.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'imageOnActionTriggerAnimation']!,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Settings',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Colors.white,
                                            fontSize: 50.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            shadows: [
                                              Shadow(
                                                color: Color(0xDA323232),
                                                offset: Offset(2.0, 2.0),
                                                blurRadius: 2.0,
                                              )
                                            ],
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 35.0,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Notifications',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      decoration: TextDecoration.underline,
                                      shadows: [
                                        Shadow(
                                          color: Color(0xDA323232),
                                          offset: Offset(2.0, 2.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          height: 40.0,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  (FFMainAxisAlignment
                                                          .spaceBetween)
                                                      .flutterValue,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    '    Spins & Coins',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          shadows: [
                                                            Shadow(
                                                              color: Color(
                                                                  0xDA323232),
                                                              offset: Offset(
                                                                  2.0, 2.0),
                                                              blurRadius: 2.0,
                                                            )
                                                          ],
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Switch.adaptive(
                                                    value:
                                                        _model.coinMasterValue!,
                                                    onChanged:
                                                        (newValue) async {
                                                      safeSetState(() => _model
                                                              .coinMasterValue =
                                                          newValue);
                                                      if (newValue) {
                                                        FFAppState()
                                                                .notifcoinmaster =
                                                            true;
                                                        safeSetState(() {});
                                                        unawaited(
                                                          () async {
                                                            await actions
                                                                .gererAbonnementUnique(
                                                              'coin_master',
                                                              true,
                                                            );
                                                          }(),
                                                        );
                                                      } else {
                                                        FFAppState()
                                                                .notifcoinmaster =
                                                            false;
                                                        safeSetState(() {});
                                                        unawaited(
                                                          () async {
                                                            await actions
                                                                .gererAbonnementUnique(
                                                              'coin_master',
                                                              false,
                                                            );
                                                          }(),
                                                        );
                                                      }
                                                    },
                                                    activeColor:
                                                        Color(0xFF00FF43),
                                                    activeTrackColor:
                                                        Color(0xFFECECEC),
                                                    inactiveTrackColor:
                                                        Color(0xFFECECEC),
                                                    inactiveThumbColor:
                                                        Color(0xFFFF0000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                (FFMainAxisAlignment
                                                        .spaceBetween)
                                                    .flutterValue,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  '    Piggy Rewards',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        shadows: [
                                                          Shadow(
                                                            color: Color(
                                                                0xDA323232),
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            blurRadius: 2.0,
                                                          )
                                                        ],
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Switch.adaptive(
                                                  value: _model.piggyValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.piggyValue =
                                                            newValue);
                                                    if (newValue) {
                                                      FFAppState()
                                                          .notifpiggygo = true;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'piggy_go',
                                                            true,
                                                          );
                                                        }(),
                                                      );
                                                    } else {
                                                      FFAppState()
                                                          .notifpiggygo = false;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'piggy_go',
                                                            false,
                                                          );
                                                        }(),
                                                      );
                                                    }
                                                  },
                                                  activeColor:
                                                      Color(0xFF00FF43),
                                                  activeTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveThumbColor:
                                                      Color(0xFFFF0000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                (FFMainAxisAlignment
                                                        .spaceBetween)
                                                    .flutterValue,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  '    Dice Rewards',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        shadows: [
                                                          Shadow(
                                                            color: Color(
                                                                0xDA323232),
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            blurRadius: 2.0,
                                                          )
                                                        ],
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Switch.adaptive(
                                                  value: _model.diceValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() => _model
                                                        .diceValue = newValue);
                                                    if (newValue) {
                                                      FFAppState()
                                                              .notifdicedreams =
                                                          true;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'dice_dreams',
                                                            true,
                                                          );
                                                        }(),
                                                      );
                                                    } else {
                                                      FFAppState()
                                                              .notifdicedreams =
                                                          false;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'dice_dreams',
                                                            false,
                                                          );
                                                        }(),
                                                      );
                                                    }
                                                  },
                                                  activeColor:
                                                      Color(0xFF00FF43),
                                                  activeTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveThumbColor:
                                                      Color(0xFFFF0000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                (FFMainAxisAlignment
                                                        .spaceBetween)
                                                    .flutterValue,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  '    Domino Rewards',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        shadows: [
                                                          Shadow(
                                                            color: Color(
                                                                0xDA323232),
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            blurRadius: 2.0,
                                                          )
                                                        ],
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Switch.adaptive(
                                                  value: _model.dominoValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.dominoValue =
                                                            newValue);
                                                    if (newValue) {
                                                      FFAppState()
                                                              .notifdominodreams =
                                                          true;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'domino_dreams',
                                                            true,
                                                          );
                                                        }(),
                                                      );
                                                    } else {
                                                      FFAppState()
                                                              .notifdominodreams =
                                                          false;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'domino_dreams',
                                                            false,
                                                          );
                                                        }(),
                                                      );
                                                    }
                                                  },
                                                  activeColor:
                                                      Color(0xFF00FF43),
                                                  activeTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveThumbColor:
                                                      Color(0xFFFF0000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                (FFMainAxisAlignment
                                                        .spaceBetween)
                                                    .flutterValue,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  '    Board Bonus',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        shadows: [
                                                          Shadow(
                                                            color: Color(
                                                                0xDA323232),
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            blurRadius: 2.0,
                                                          )
                                                        ],
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Switch.adaptive(
                                                  value: _model.monopolyValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.monopolyValue =
                                                            newValue);
                                                    if (newValue) {
                                                      FFAppState()
                                                              .notifmonopolygo =
                                                          true;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'monopoly_go',
                                                            true,
                                                          );
                                                        }(),
                                                      );
                                                    } else {
                                                      FFAppState()
                                                              .notifmonopolygo =
                                                          false;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'monopoly_go',
                                                            false,
                                                          );
                                                        }(),
                                                      );
                                                    }
                                                  },
                                                  activeColor:
                                                      Color(0xFF00FF43),
                                                  activeTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveThumbColor:
                                                      Color(0xFFFF0000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                (FFMainAxisAlignment
                                                        .spaceBetween)
                                                    .flutterValue,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  '    Bingo Rewards',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        shadows: [
                                                          Shadow(
                                                            color: Color(
                                                                0xDA323232),
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            blurRadius: 2.0,
                                                          )
                                                        ],
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Switch.adaptive(
                                                  value:
                                                      _model.bingoblitzValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.bingoblitzValue =
                                                            newValue);
                                                    if (newValue) {
                                                      FFAppState()
                                                              .notifbingoblitz =
                                                          true;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'bingo_blitz',
                                                            true,
                                                          );
                                                        }(),
                                                      );
                                                    } else {
                                                      FFAppState()
                                                              .notifbingoblitz =
                                                          false;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'bingo_blitz',
                                                            false,
                                                          );
                                                        }(),
                                                      );
                                                    }
                                                  },
                                                  activeColor:
                                                      Color(0xFF00FF43),
                                                  activeTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveThumbColor:
                                                      Color(0xFFFF0000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                (FFMainAxisAlignment
                                                        .spaceBetween)
                                                    .flutterValue,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  '    Spins Match',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        shadows: [
                                                          Shadow(
                                                            color: Color(
                                                                0xDA323232),
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            blurRadius: 2.0,
                                                          )
                                                        ],
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Switch.adaptive(
                                                  value:
                                                      _model.matchmastersValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() => _model
                                                            .matchmastersValue =
                                                        newValue);
                                                    if (newValue) {
                                                      FFAppState()
                                                              .notifmatchmasters =
                                                          true;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'match_masters',
                                                            true,
                                                          );
                                                        }(),
                                                      );
                                                    } else {
                                                      FFAppState()
                                                              .notifmatchmasters =
                                                          false;
                                                      safeSetState(() {});
                                                      unawaited(
                                                        () async {
                                                          await actions
                                                              .gererAbonnementUnique(
                                                            'match_masters',
                                                            false,
                                                          );
                                                        }(),
                                                      );
                                                    }
                                                  },
                                                  activeColor:
                                                      Color(0xFF00FF43),
                                                  activeTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveTrackColor:
                                                      Color(0xFFECECEC),
                                                  inactiveThumbColor:
                                                      Color(0xFFFF0000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
