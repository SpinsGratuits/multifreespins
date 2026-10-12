import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'accueil_model.dart';
export 'accueil_model.dart';

class AccueilWidget extends StatefulWidget {
  const AccueilWidget({super.key});

  static String routeName = 'Accueil';
  static String routePath = '/accueil';

  @override
  State<AccueilWidget> createState() => _AccueilWidgetState();
}

class _AccueilWidgetState extends State<AccueilWidget>
    with TickerProviderStateMixin {
  late AccueilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccueilModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      unawaited(
        () async {
          await requestPermission(notificationsPermission);
        }(),
      );
      unawaited(
        () async {
          await actions.modePleinEcran();
        }(),
      );
      unawaited(
        () async {
          await actions.bloquerPortrait();
        }(),
      );
      if (FFAppState().pubdejavue == false) {
        unawaited(
          () async {
            await actions.showAppOpenAd(
              'ca-app-pub-6077739467137252/7507116549',
            );
          }(),
        );
        FFAppState().pubdejavue = true;
      }
      await Future.delayed(
        Duration(
          milliseconds: 500,
        ),
      );
    });

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
      'stackOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.9, 0.9),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 1.0,
            end: 0.9,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.9, 0.9),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 1.0,
            end: 0.9,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.9, 0.9),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 1.0,
            end: 0.9,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.9, 0.9),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 1.0,
            end: 0.9,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.9, 0.9),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 1.0,
            end: 0.9,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.9, 0.9),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 1.0,
            end: 0.9,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.9, 0.9),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
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
                      children: [
                        if (isAndroid)
                          Align(
                            alignment: AlignmentDirectional(0.96, -0.57),
                            child: InkWell(
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
                                await actions.quitterApplication();
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Quit2.png',
                                  width: 60.0,
                                  height: 60.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ).animateOnActionTrigger(
                              animationsMap['imageOnActionTriggerAnimation1']!,
                            ),
                          ),
                        Align(
                          alignment: AlignmentDirectional(-0.95, -0.49),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (animationsMap[
                                      'imageOnActionTriggerAnimation2'] !=
                                  null) {
                                await animationsMap[
                                        'imageOnActionTriggerAnimation2']!
                                    .controller
                                    .forward(from: 0.0)
                                    .whenComplete(animationsMap[
                                            'imageOnActionTriggerAnimation2']!
                                        .controller
                                        .reverse);
                              }

                              context.pushNamed(
                                ParametresWidget.routeName,
                                extra: <String, dynamic>{
                                  '__transition_info__': TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 600),
                                  ),
                                },
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Parametre2.png',
                                width: 60.0,
                                height: 60.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['imageOnActionTriggerAnimation2']!,
                          ),
                        ),
                      ],
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
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 290.0,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 163.0,
                                              height: 65.0,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'stackOnActionTriggerAnimation1'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'stackOnActionTriggerAnimation1']!
                                                        .controller
                                                        .forward(from: 0.0)
                                                        .whenComplete(animationsMap[
                                                                'stackOnActionTriggerAnimation1']!
                                                            .controller
                                                            .reverse);
                                                  }
                                                  HapticFeedback.vibrate();

                                                  context.pushNamed(
                                                    MasterCoin1Widget.routeName,
                                                    extra: <String, dynamic>{
                                                      '__transition_info__':
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 600),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      child: Image.asset(
                                                        'assets/images/Coinmaster1.jpg',
                                                        width: 163.0,
                                                        height: 65.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Spins & Coins',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 21.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              shadows: [
                                                                Shadow(
                                                                  color: Color(
                                                                      0xDA323232),
                                                                  offset:
                                                                      Offset(
                                                                          3.0,
                                                                          3.0),
                                                                  blurRadius:
                                                                      2.0,
                                                                )
                                                              ],
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'stackOnActionTriggerAnimation1']!,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 163.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (animationsMap[
                                                            'stackOnActionTriggerAnimation2'] !=
                                                        null) {
                                                      await animationsMap[
                                                              'stackOnActionTriggerAnimation2']!
                                                          .controller
                                                          .forward(from: 0.0)
                                                          .whenComplete(
                                                              animationsMap[
                                                                      'stackOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .reverse);
                                                    }
                                                    HapticFeedback.vibrate();

                                                    context.pushNamed(
                                                      DiceDreams1Widget
                                                          .routeName,
                                                      extra: <String, dynamic>{
                                                        '__transition_info__':
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  600),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.asset(
                                                          'assets/images/Dicedreams.jpg',
                                                          width: 163.0,
                                                          height: 65.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Dice Rewards',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 21.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: Color(
                                                                        0xDA323232),
                                                                    offset:
                                                                        Offset(
                                                                            3.0,
                                                                            3.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'stackOnActionTriggerAnimation2']!,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 163.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (animationsMap[
                                                            'stackOnActionTriggerAnimation3'] !=
                                                        null) {
                                                      await animationsMap[
                                                              'stackOnActionTriggerAnimation3']!
                                                          .controller
                                                          .forward(from: 0.0)
                                                          .whenComplete(
                                                              animationsMap[
                                                                      'stackOnActionTriggerAnimation3']!
                                                                  .controller
                                                                  .reverse);
                                                    }
                                                    HapticFeedback.vibrate();

                                                    context.pushNamed(
                                                      MonopolyGo1Widget
                                                          .routeName,
                                                      extra: <String, dynamic>{
                                                        '__transition_info__':
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  600),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.asset(
                                                          'assets/images/Monopolygo.jpg',
                                                          width: 163.0,
                                                          height: 65.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Board Bonus',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 21.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: Color(
                                                                        0xDA323232),
                                                                    offset:
                                                                        Offset(
                                                                            3.0,
                                                                            3.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'stackOnActionTriggerAnimation3']!,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 163.0,
                                              height: 65.0,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'stackOnActionTriggerAnimation4'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'stackOnActionTriggerAnimation4']!
                                                        .controller
                                                        .forward(from: 0.0)
                                                        .whenComplete(animationsMap[
                                                                'stackOnActionTriggerAnimation4']!
                                                            .controller
                                                            .reverse);
                                                  }
                                                  HapticFeedback.vibrate();

                                                  context.pushNamed(
                                                    MatchMasters1Widget
                                                        .routeName,
                                                    extra: <String, dynamic>{
                                                      '__transition_info__':
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 600),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      child: Image.asset(
                                                        'assets/images/MatchMaster.jpg',
                                                        width: 163.0,
                                                        height: 65.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Spins Match',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      21.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  shadows: [
                                                                    Shadow(
                                                                      color: Color(
                                                                          0xDA323232),
                                                                      offset: Offset(
                                                                          3.0,
                                                                          3.0),
                                                                      blurRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'stackOnActionTriggerAnimation4']!,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 163.0,
                                              height: 65.0,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'stackOnActionTriggerAnimation5'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'stackOnActionTriggerAnimation5']!
                                                        .controller
                                                        .forward(from: 0.0)
                                                        .whenComplete(animationsMap[
                                                                'stackOnActionTriggerAnimation5']!
                                                            .controller
                                                            .reverse);
                                                  }
                                                  HapticFeedback.vibrate();

                                                  context.pushNamed(
                                                    PiggyGo1Widget.routeName,
                                                    extra: <String, dynamic>{
                                                      '__transition_info__':
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 600),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      child: Image.asset(
                                                        'assets/images/Piggygo.jpg',
                                                        width: 163.0,
                                                        height: 65.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Piggy Rewards',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      21.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  shadows: [
                                                                    Shadow(
                                                                      color: Color(
                                                                          0xDA323232),
                                                                      offset: Offset(
                                                                          3.0,
                                                                          3.0),
                                                                      blurRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'stackOnActionTriggerAnimation5']!,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 163.0,
                                              height: 65.0,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'stackOnActionTriggerAnimation6'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'stackOnActionTriggerAnimation6']!
                                                        .controller
                                                        .forward(from: 0.0)
                                                        .whenComplete(animationsMap[
                                                                'stackOnActionTriggerAnimation6']!
                                                            .controller
                                                            .reverse);
                                                  }
                                                  HapticFeedback.vibrate();

                                                  context.pushNamed(
                                                    DominoDreams1Widget
                                                        .routeName,
                                                    extra: <String, dynamic>{
                                                      '__transition_info__':
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 600),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      child: Image.asset(
                                                        'assets/images/Dominodreams.jpg',
                                                        width: 163.0,
                                                        height: 65.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Domino Rewards',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      19.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  shadows: [
                                                                    Shadow(
                                                                      color: Color(
                                                                          0xDA323232),
                                                                      offset: Offset(
                                                                          3.0,
                                                                          3.0),
                                                                      blurRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'stackOnActionTriggerAnimation6']!,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 163.0,
                                              height: 65.0,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'stackOnActionTriggerAnimation7'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'stackOnActionTriggerAnimation7']!
                                                        .controller
                                                        .forward(from: 0.0)
                                                        .whenComplete(animationsMap[
                                                                'stackOnActionTriggerAnimation7']!
                                                            .controller
                                                            .reverse);
                                                  }
                                                  HapticFeedback.vibrate();

                                                  context.pushNamed(
                                                    BingoBlitz1Widget.routeName,
                                                    extra: <String, dynamic>{
                                                      '__transition_info__':
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 600),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      child: Image.asset(
                                                        'assets/images/Bingoblitz.jpg',
                                                        width: 163.0,
                                                        height: 65.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Bingo Rewards',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      21.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  shadows: [
                                                                    Shadow(
                                                                      color: Color(
                                                                          0xDA323232),
                                                                      offset: Offset(
                                                                          3.0,
                                                                          3.0),
                                                                      blurRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'stackOnActionTriggerAnimation7']!,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 163.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
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
