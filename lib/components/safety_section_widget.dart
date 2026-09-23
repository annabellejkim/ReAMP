import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'safety_section_model.dart';
export 'safety_section_model.dart';

class SafetySectionWidget extends StatefulWidget {
  const SafetySectionWidget({
    super.key,
    Color? tone,
    this.icon,
    String? title,
    String? body,
  })  : this.tone = tone ?? const Color(0x00000000),
        this.title = title ?? 'About ReAMP',
        this.body = body ??
            'ReAMP is an athlete recovery and readiness tool designed to help athletes reflect on factors that may influence how ready they feel for training and competition. ReAMP uses information entered during daily check-ins, such as sleep, mood, energy, focus, fatigue, and soreness, to generate recovery insights and general recommendations.\n\nReAMP is designed to support self-awareness and help athletes recognize patterns in their recovery habits. It is not intended to diagnose, treat, cure, or prevent any medical condition or injury.';

  final Color tone;
  final Widget? icon;
  final String title;
  final String body;

  @override
  State<SafetySectionWidget> createState() => _SafetySectionWidgetState();
}

class _SafetySectionWidgetState extends State<SafetySectionWidget> {
  late SafetySectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SafetySectionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        widget.tone,
                        FlutterFlowTheme.of(context).primary,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: widget.icon!,
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'About ReAMP',
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
              Text(
                valueOrDefault<String>(
                  widget.body,
                  'ReAMP is an athlete recovery and readiness tool designed to help athletes reflect on factors that may influence how ready they feel for training and competition. ReAMP uses information entered during daily check-ins, such as sleep, mood, energy, focus, fatigue, and soreness, to generate recovery insights and general recommendations.\n\nReAMP is designed to support self-awareness and help athletes recognize patterns in their recovery habits. It is not intended to diagnose, treat, cure, or prevent any medical condition or injury.',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.5,
                    ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
