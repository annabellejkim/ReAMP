import '/components/safety_section_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'health_safety_model.dart';
export 'health_safety_model.dart';

/// Create a new page in my ReAMP: Athlete Recovery app called “Health &
/// Safety.”
///
/// PURPOSE
///
/// This page should provide users with clear information about what ReAMP
/// does, its limitations, its medical disclaimer, and when users should seek
/// professional care.
///
/// The tone should be informative, reassuring, and easy for adolescent
/// athletes to understand.
///
/// DESIGN
/// Match the existing ReAMP app's visual design, typography, spacing,
/// buttons, and branding.
/// Use a clean, modern, athlete-friendly layout.
/// Make the page scrollable.
/// Use clear section headings and readable body text.
/// Avoid making the page look like a medical/clinical dashboard.
/// Use subtle icons where appropriate, but keep the design professional and
/// uncluttered.
/// Include a back button at the top that returns to the previous page.
/// Page title at the top: Health & Safety
/// PAGE STRUCTURE
/// 1. About ReAMP
///
/// Heading: About ReAMP
///
/// Text:
///
/// “ReAMP is an athlete recovery and readiness tool designed to help athletes
/// reflect on factors that may influence how ready they feel for training and
/// competition. ReAMP uses information entered during daily check-ins, such
/// as sleep, mood, energy, focus, fatigue, and soreness, to generate recovery
/// insights and general recommendations.
///
/// ReAMP is designed to support self-awareness and help athletes recognize
/// patterns in their recovery habits. It is not intended to diagnose, treat,
/// cure, or prevent any medical condition or injury.”
///
/// 2. Limitations
///
/// Heading: Limitations
///
/// Text:
///
/// “ReAMP’s recommendations are based only on the information provided by the
/// user and the research framework used to develop the app. Recovery and
/// readiness are influenced by many factors, and ReAMP cannot account for
/// every individual circumstance.
///
/// Recovery Scores and recommendations are estimates intended for
/// informational purposes. They should not be interpreted as measurements of
/// medical status, athletic performance, or physical readiness.
///
/// ReAMP may not always accurately reflect how an athlete is feeling or
/// whether an athlete is safe to participate in physical activity. Users
/// should consider their own symptoms, circumstances, and guidance from
/// qualified professionals.”
///
/// 3. Medical Disclaimer
///
/// Heading: Medical Disclaimer
///
/// Text:
///
/// “ReAMP is not a medical device and does not provide medical advice,
/// diagnosis, or treatment. Information provided by ReAMP is for general
/// educational and informational purposes only.
///
/// ReAMP does not replace evaluation, diagnosis, treatment, or advice from a
/// qualified healthcare professional. Users should not use ReAMP to make
/// decisions about diagnosing or treating an injury, illness, or other
/// medical condition.
///
/// If you have questions or concerns about your health, injury, symptoms, or
/// ability to participate in physical activity, consult an appropriate
/// qualified healthcare professional.”
///
/// 4. When to Seek Professional Care
///
/// Heading: When to Seek Professional Care
///
/// Text:
///
/// “ReAMP is not a substitute for professional evaluation. Consider speaking
/// with a parent, guardian, coach, athletic trainer, physician, or other
/// qualified healthcare professional if you are experiencing persistent pain,
/// significant or worsening symptoms, an injury, illness, or concerns about
/// your ability to safely participate in physical activity.
///
/// For symptoms that may require urgent or emergency attention, seek
/// immediate medical care or contact your local emergency services.
///
/// When in doubt about your health or safety, prioritize professional
/// guidance over information provided by ReAMP.”
///
/// INTERACTION
///
/// At the bottom of the page, include a button labeled:
///
/// Back to Recovery Score
///
/// This button should navigate to the Recovery Score page.
///
/// IMPORTANT
///
/// Do not add claims that ReAMP can diagnose injuries, predict injuries,
/// determine whether an athlete is medically cleared, or determine whether an
/// athlete is safe to play.
///
/// Do not describe the Recovery Score as a medical measurement.
///
/// Keep the page informational rather than alarmist.
///
/// The page should look like a natural part of the existing ReAMP app rather
/// than a separate legal document.
class HealthSafetyWidget extends StatefulWidget {
  const HealthSafetyWidget({super.key});

  static String routeName = 'HealthSafety';
  static String routePath = '/healthSafety';

  @override
  State<HealthSafetyWidget> createState() => _HealthSafetyWidgetState();
}

class _HealthSafetyWidgetState extends State<HealthSafetyWidget> {
  late HealthSafetyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealthSafetyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(CheckInWidget.routeName);
                                },
                              ),
                              Text(
                                'Health & Safety',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Icon(
                            Icons.shield_rounded,
                            color: Color(0x66105DFB),
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              wrapWithModel(
                                model: _model.safetySectionModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: SafetySectionWidget(
                                  tone: FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.info_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  title: 'About ReAMP',
                                  body:
                                      'ReAMP is an athlete recovery and readiness tool designed to help athletes reflect on factors that may influence how ready they feel for training and competition. ReAMP uses information entered during daily check-ins, such as sleep, mood, energy, focus, fatigue, and soreness, to generate recovery insights and general recommendations.\n\nReAMP is designed to support self-awareness and help athletes recognize patterns in their recovery habits. It is not intended to diagnose, treat, cure, or prevent any medical condition or injury.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.safetySectionModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: SafetySectionWidget(
                                  tone: FlutterFlowTheme.of(context).tertiary,
                                  icon: Icon(
                                    Icons.speed_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  title: 'Limitations',
                                  body:
                                      'ReAMP’s recommendations are based only on the information provided by the user and the research framework used to develop the app. Recovery and readiness are influenced by many factors, and ReAMP cannot account for every individual circumstance.\n\nRecovery Scores and recommendations are estimates intended for informational purposes. They should not be interpreted as measurements of medical status, athletic performance, or physical readiness.\n\nReAMP may not always accurately reflect how an athlete is feeling or whether an athlete is safe to participate in physical activity. Users should consider their own symptoms, circumstances, and guidance from qualified professionals.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.safetySectionModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: SafetySectionWidget(
                                  tone: FlutterFlowTheme.of(context).warning,
                                  icon: Icon(
                                    Icons.gpp_maybe_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  title: 'Medical Disclaimer',
                                  body:
                                      'ReAMP is not a medical device and does not provide medical advice, diagnosis, or treatment. Information provided by ReAMP is for general educational and informational purposes only.\n\nReAMP does not replace evaluation, diagnosis, treatment, or advice from a qualified healthcare professional. Users should not use ReAMP to make decisions about diagnosing or treating an injury, illness, or other medical condition.\n\nIf you have questions or concerns about your health, injury, symptoms, or ability to participate in physical activity, consult an appropriate qualified healthcare professional.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.safetySectionModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: SafetySectionWidget(
                                  tone: FlutterFlowTheme.of(context).error,
                                  icon: Icon(
                                    Icons.medical_services_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  title: 'Seek Professional Care',
                                  body:
                                      'ReAMP is not a substitute for professional evaluation. Consider speaking with a parent, guardian, coach, athletic trainer, physician, or other qualified healthcare professional if you are experiencing persistent pain, significant or worsening symptoms, an injury, illness, or concerns about your ability to safely participate in physical activity.\n\nFor symptoms that may require urgent or emergency attention, seek immediate medical care or contact your local emergency services.\n\nWhen in doubt about your health or safety, prioritize professional guidance over information provided by ReAMP.',
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(RecSourcesWidget.routeName);
                                },
                                text: 'Where Do Our Recommendations Come From?',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Your health and safety is our priority.',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Text(
                                      'ReAMP',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Container(),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Container(
                        width: 0.0,
                        height: 0.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
