// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_messaging/firebase_messaging.dart';

Future gererAbonnementUnique(String topicName, bool activer) async {
  if (activer) {
    await FirebaseMessaging.instance.subscribeToTopic(topicName);
    print('Branché sur la fréquence : $topicName');
  } else {
    await FirebaseMessaging.instance.unsubscribeFromTopic(topicName);
    print('Débranché de la fréquence : $topicName');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
