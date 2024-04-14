// import '/auth/firebase_auth/auth_util.dart';
// import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    // logFirebaseEvent('screen_view', parameters: {'screen_name': 'Profile'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // logFirebaseEvent('PROFILE_PAGE_Profile_ON_INIT_STATE');
      // logFirebaseEvent('Profile_haptic_feedback');
      HapticFeedback.mediumImpact();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 6),
                          child: Text(
                            valueOrDefault<String>(
                              functions.returnProfileGreeting(getCurrentTimestamp),
                              'Hello,',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0,
                                ),
                          ),
                        ),
                        // AuthUserStreamWidget(
                        //   builder: (context) => Text(
                        //     currentUserDisplayName,
                        //     style: FlutterFlowTheme.of(context)
                        //         .displaySmall
                        //         .override(
                        //           fontFamily: 'Inter',
                        //           letterSpacing: 0,
                        //         ),
                        //   ),
                        // ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          // child: StreamBuilder<List<CompanyInformationRecord>>(
                          //   stream: queryCompanyInformationRecord(
                          //     singleRecord: true,
                          //   ),
                          //   builder: (context, snapshot) {
                          //     // Customize what your widget looks like when it's loading.
                          //     if (!snapshot.hasData) {
                          //       return Center(
                          //         child: SizedBox(
                          //           width: 25,
                          //           height: 25,
                          //           child: CircularProgressIndicator(
                          //             valueColor: AlwaysStoppedAnimation<Color>(
                          //               FlutterFlowTheme.of(context).primary,
                          //             ),
                          //           ),
                          //         ),
                          //       );
                          //     }
                          //     List<CompanyInformationRecord> columnCompanyInformationRecordList = snapshot.data!;
                          //     // Return an empty Container when the item does not exist.
                          //     if (snapshot.data!.isEmpty) {
                          //       return Container();
                          //     }
                          //     final columnCompanyInformationRecord =
                          //         columnCompanyInformationRecordList.isNotEmpty
                          //             ? columnCompanyInformationRecordList.first
                          //             : null;
                          //     return Column(
                          //       mainAxisSize: MainAxisSize.max,
                          //       children: [
                          //         InkWell(
                          //           splashColor: Colors.transparent,
                          //           focusColor: Colors.transparent,
                          //           hoverColor: Colors.transparent,
                          //           highlightColor: Colors.transparent,
                          //           onTap: () async {
                          //             // logFirebaseEvent('PROFILE_PAGE_EditProfileTile_ON_TAP');
                          //             // logFirebaseEvent('EditProfileTile_navigate_to');

                          //             // context.pushNamed('EditProfile');
                          //           },
                          //           child: Column(
                          //             mainAxisSize: MainAxisSize.max,
                          //             children: [
                          //               Padding(
                          //                 padding:
                          //                     EdgeInsetsDirectional.fromSTEB(
                          //                         0, 12, 0, 12),
                          //                 child: InkWell(
                          //                   splashColor: Colors.transparent,
                          //                   focusColor: Colors.transparent,
                          //                   hoverColor: Colors.transparent,
                          //                   highlightColor: Colors.transparent,
                          //                   onTap: () async {
                          //                     // logFirebaseEvent('PROFILE_PAGE_Row_ya8doloq_ON_TAP');
                          //                     // logFirebaseEvent('Row_navigate_to');

                          //                     // context.pushNamed('EditProfile');
                          //                   },
                          //                   child: Row(
                          //                     mainAxisSize: MainAxisSize.max,
                          //                     children: [
                          //                       Container(
                          //                         width: 40,
                          //                         height: 40,
                          //                         decoration: BoxDecoration(
                          //                           color: FlutterFlowTheme.of(
                          //                                   context)
                          //                               .accent1,
                          //                           shape: BoxShape.circle,
                          //                         ),
                          //                         child: Padding(
                          //                           padding: EdgeInsets.all(4),
                          //                           child: Icon(
                          //                             Icons
                          //                                 .person_outline_rounded,
                          //                             color:
                          //                                 FlutterFlowTheme.of(
                          //                                         context)
                          //                                     .primary,
                          //                             size: 20,
                          //                           ),
                          //                         ),
                          //                       ),
                          //                       Padding(
                          //                         padding: EdgeInsetsDirectional
                          //                             .fromSTEB(18, 0, 0, 0),
                          //                         child: Text(
                          //                           'Edit Profile',
                          //                           style: FlutterFlowTheme.of(
                          //                                   context)
                          //                               .bodyLarge
                          //                               .override(
                          //                                 fontFamily: 'Inter',
                          //                                 letterSpacing: 0,
                          //                               ),
                          //                         ),
                          //                       ),
                          //                     ],
                          //                   ),
                          //                 ),
                          //               ),
                          //               Divider(
                          //                 thickness: 1,
                          //                 color: FlutterFlowTheme.of(context)
                          //                     .accent4,
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //         if ((columnCompanyInformationRecord?.name !=
                          //                     null &&
                          //                 columnCompanyInformationRecord
                          //                         ?.name !=
                          //                     '') &&
                          //             (columnCompanyInformationRecord
                          //                         ?.companyBio !=
                          //                     null &&
                          //                 columnCompanyInformationRecord
                          //                         ?.companyBio !=
                          //                     ''))
                          //           InkWell(
                          //             splashColor: Colors.transparent,
                          //             focusColor: Colors.transparent,
                          //             hoverColor: Colors.transparent,
                          //             highlightColor: Colors.transparent,
                          //             onTap: () async {
                          //               // logFirebaseEvent('PROFILE_PAGE_AboutUsTile_ON_TAP');
                          //               // logFirebaseEvent('AboutUsTile_navigate_to');

                          //               // context.pushNamed('AboutUs');
                          //             },
                          //             child: Column(
                          //               mainAxisSize: MainAxisSize.max,
                          //               children: [
                          //                 Padding(
                          //                   padding:
                          //                       EdgeInsetsDirectional.fromSTEB(
                          //                           0, 12, 0, 12),
                          //                   child: Row(
                          //                     mainAxisSize: MainAxisSize.max,
                          //                     children: [
                          //                       Container(
                          //                         width: 40,
                          //                         height: 40,
                          //                         decoration: BoxDecoration(
                          //                           color: FlutterFlowTheme.of(
                          //                                   context)
                          //                               .accent1,
                          //                           shape: BoxShape.circle,
                          //                         ),
                          //                         child: Padding(
                          //                           padding: EdgeInsets.all(4),
                          //                           child: Icon(
                          //                             Icons.info_outlined,
                          //                             color:
                          //                                 FlutterFlowTheme.of(
                          //                                         context)
                          //                                     .primary,
                          //                             size: 20,
                          //                           ),
                          //                         ),
                          //                       ),
                          //                       Padding(
                          //                         padding: EdgeInsetsDirectional
                          //                             .fromSTEB(18, 0, 0, 0),
                          //                         child: Text(
                          //                           'About Us',
                          //                           style: FlutterFlowTheme.of(
                          //                                   context)
                          //                               .bodyLarge
                          //                               .override(
                          //                                 fontFamily: 'Inter',
                          //                                 letterSpacing: 0,
                          //                               ),
                          //                         ),
                          //                       ),
                          //                     ],
                          //                   ),
                          //                 ),
                          //                 Divider(
                          //                   thickness: 1,
                          //                   color: FlutterFlowTheme.of(context)
                          //                       .accent4,
                          //                 ),
                          //               ],
                          //             ),
                          //           ),
                          //         Padding(
                          //           padding: EdgeInsetsDirectional.fromSTEB(
                          //               0, 12, 0, 12),
                          //           child: InkWell(
                          //             splashColor: Colors.transparent,
                          //             focusColor: Colors.transparent,
                          //             hoverColor: Colors.transparent,
                          //             highlightColor: Colors.transparent,
                          //             onTap: () async {
                          //               // logFirebaseEvent('PROFILE_PAGE_LogoutTile_ON_TAP');
                          //               // logFirebaseEvent('LogoutTile_auth');
                          //               // GoRouter.of(context).prepareAuthEvent();
                          //               // await authManager.signOut();
                          //               // GoRouter.of(context).clearRedirectLocation();

                          //               // context.goNamedAuth('Splash', context.mounted);
                          //             },
                          //             child: Row(
                          //               mainAxisSize: MainAxisSize.max,
                          //               children: [
                          //                 Container(
                          //                   width: 40,
                          //                   height: 40,
                          //                   decoration: BoxDecoration(
                          //                     color:
                          //                         FlutterFlowTheme.of(context)
                          //                             .accent1,
                          //                     shape: BoxShape.circle,
                          //                   ),
                          //                   child: Padding(
                          //                     padding: EdgeInsets.all(4),
                          //                     child: Icon(
                          //                       Icons.logout,
                          //                       color:
                          //                           FlutterFlowTheme.of(context)
                          //                               .primary,
                          //                       size: 18,
                          //                     ),
                          //                   ),
                          //                 ),
                          //                 Padding(
                          //                   padding:
                          //                       EdgeInsetsDirectional.fromSTEB(
                          //                           18, 0, 0, 0),
                          //                   child: Text(
                          //                     'Log out',
                          //                     style:
                          //                         FlutterFlowTheme.of(context)
                          //                             .bodyLarge
                          //                             .override(
                          //                               fontFamily: 'Inter',
                          //                               letterSpacing: 0,
                          //                             ),
                          //                   ),
                          //                 ),
                          //               ],
                          //             ),
                          //           ),
                          //         ),
                          //       ],
                          //     );
                          //   },
                          // ),
                        ),
                      ].addToEnd(SizedBox(height: 44)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}