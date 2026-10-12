import '/backend/api_requests/api_calls.dart';
import '/components/flou_refresh_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bingo_blitz1_widget.dart' show BingoBlitz1Widget;
import 'dart:async';
import 'package:flutter/material.dart';

class BingoBlitz1Model extends FlutterFlowModel<BingoBlitz1Widget> {
  ///  Local state fields for this page.

  bool isRefreshing = false;

  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for FlouRefresh component.
  late FlouRefreshModel flouRefreshModel;

  @override
  void initState(BuildContext context) {
    flouRefreshModel = createModel(context, () => FlouRefreshModel());
  }

  @override
  void dispose() {
    flouRefreshModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
