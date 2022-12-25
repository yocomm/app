import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CancelTripWidget extends StatefulWidget {
  const CancelTripWidget({
    Key? key,
    this.tripDetails,
  }) : super(key: key);

  final TripsRecord? tripDetails;

  @override
  _CancelTripWidgetState createState() => _CancelTripWidgetState();
}

class _CancelTripWidgetState extends State<CancelTripWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
