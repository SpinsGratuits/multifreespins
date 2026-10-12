import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'flou_refresh_model.dart';
export 'flou_refresh_model.dart';

class FlouRefreshWidget extends StatefulWidget {
  const FlouRefreshWidget({
    super.key,
    bool? parameter1,
  }) : this.parameter1 = parameter1 ?? false;

  final bool parameter1;

  @override
  State<FlouRefreshWidget> createState() => _FlouRefreshWidgetState();
}

class _FlouRefreshWidgetState extends State<FlouRefreshWidget> {
  late FlouRefreshModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlouRefreshModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: FFAppState().globalIsRefreshing,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 1.0,
            sigmaY: 1.0,
          ),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(),
          ),
        ),
      ),
    );
  }
}
