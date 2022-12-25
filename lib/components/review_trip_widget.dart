import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewTripWidget extends StatefulWidget {
  const ReviewTripWidget({
    Key? key,
    this.propertyReference,
    this.tripDetails,
  }) : super(key: key);

  final PropertiesRecord? propertyReference;
  final TripsRecord? tripDetails;

  @override
  _ReviewTripWidgetState createState() => _ReviewTripWidgetState();
}

class _ReviewTripWidgetState extends State<ReviewTripWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
