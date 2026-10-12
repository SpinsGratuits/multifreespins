// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io' show Platform;
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future showAppOpenAd(String adUnitId) async {
  // Par défaut, on utilise l'ID passé en argument (votre ID Android actuel)
  String finalAdUnitId = adUnitId;

  // Si l'utilisateur est sur iOS, on remplace par l'ID AdMob iOS
  if (Platform.isIOS) {
    finalAdUnitId = 'ca-app-pub-6077739467137252/3625386328';
  }

  // Charge l'annonce d'ouverture avec le bon ID selon la plateforme
  await AppOpenAd.load(
    adUnitId: finalAdUnitId,
    request: const AdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        // Dès qu'elle est chargée, on l'affiche en plein écran
        ad.show();
      },
      onAdFailedToLoad: (error) {
        print('Échec du chargement de l\'annonce : $error');
      },
    ),
  );
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
