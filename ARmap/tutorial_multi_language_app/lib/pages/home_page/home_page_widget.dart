// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'home_page_model.dart';
// export 'home_page_model.dart';
//
// class HomePageWidget extends StatefulWidget {
//   const HomePageWidget({super.key});
//
//   @override
//   State<HomePageWidget> createState() => _HomePageWidgetState();
// }
//
// class _HomePageWidgetState extends State<HomePageWidget>
//     with TickerProviderStateMixin {
//   late HomePageModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => HomePageModel());
//
//     _model.tabBarController = TabController(
//       vsync: this,
//       length: 2,
//       initialIndex: 0,
//     )..addListener(() => setState(() {}));
//     _model.emailAddressLoginTextController ??= TextEditingController();
//     _model.emailAddressLoginFocusNode ??= FocusNode();
//
//     _model.passwordLoginTextController ??= TextEditingController();
//     _model.passwordLoginFocusNode ??= FocusNode();
//
//     _model.emailAddressTextController ??= TextEditingController();
//     _model.emailAddressFocusNode ??= FocusNode();
//
//     _model.passwordCreateTextController ??= TextEditingController();
//     _model.passwordCreateFocusNode ??= FocusNode();
//
//     _model.passwordConfirmTextController ??= TextEditingController();
//     _model.passwordConfirmFocusNode ??= FocusNode();
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: MediaQuery.sizeOf(context).width * 1.0,
//                     height: MediaQuery.sizeOf(context).height * 1.0,
//                     constraints: const BoxConstraints(
//                       maxWidth: 600.0,
//                     ),
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.fitWidth,
//                         image: Image.asset(
//                           'assets/images/page_bg_transparent@2x.png',
//                         ).image,
//                       ),
//                     ),
//                     child: Padding(
//                       padding:
//                           const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsetsDirectional.fromSTEB(
//                                 0.0, 0.0, 0.0, 24.0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 ClipRRect(
//                                   borderRadius: BorderRadius.circular(8.0),
//                                   child: Image.network(
//                                     'https://picsum.photos/seed/153/600',
//                                     width: 183.0,
//                                     height: 139.0,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             child: Column(
//                               children: [
//                                 Align(
//                                   alignment: const Alignment(0.0, 0),
//                                   child: TabBar(
//                                     isScrollable: true,
//                                     labelColor:
//                                         FlutterFlowTheme.of(context).primary,
//                                     unselectedLabelColor:
//                                         FlutterFlowTheme.of(context)
//                                             .secondaryText,
//                                     labelPadding:
//                                         const EdgeInsetsDirectional.fromSTEB(
//                                             24.0, 0.0, 24.0, 0.0),
//                                     labelStyle: FlutterFlowTheme.of(context)
//                                         .titleSmall
//                                         .override(
//                                           fontFamily: 'Readex Pro',
//                                           letterSpacing: 0.0,
//                                         ),
//                                     unselectedLabelStyle: const TextStyle(),
//                                     indicatorColor:
//                                         FlutterFlowTheme.of(context).primary,
//                                     indicatorWeight: 3.0,
//                                     tabs: const [
//                                       Tab(
//                                         text: '로그인',
//                                       ),
//                                       Tab(
//                                         text: '회원가입',
//                                       ),
//                                     ],
//                                     controller: _model.tabBarController,
//                                     onTap: (i) async {
//                                       [() async {}, () async {}][i]();
//                                     },
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: TabBarView(
//                                     controller: _model.tabBarController,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsetsDirectional.fromSTEB(
//                                             24.0, 0.0, 24.0, 48.0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.min,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Column(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Padding(
//                                                   padding: const EdgeInsetsDirectional
//                                                       .fromSTEB(
//                                                           0.0, 20.0, 0.0, 0.0),
//                                                   child: TextFormField(
//                                                     controller: _model
//                                                         .emailAddressLoginTextController,
//                                                     focusNode: _model
//                                                         .emailAddressLoginFocusNode,
//                                                     obscureText: false,
//                                                     decoration: InputDecoration(
//                                                       labelText:
//                                                           'Email Address',
//                                                       labelStyle:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .bodySmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 fontSize: 14.0,
//                                                                 letterSpacing:
//                                                                     0.0,
//                                                               ),
//                                                       hintText:
//                                                           'Enter your email...',
//                                                       hintStyle:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .bodySmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 fontSize: 16.0,
//                                                                 letterSpacing:
//                                                                     0.0,
//                                                               ),
//                                                       enabledBorder:
//                                                           OutlineInputBorder(
//                                                         borderSide: const BorderSide(
//                                                           color:
//                                                               Color(0x00000000),
//                                                           width: 1.0,
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8.0),
//                                                       ),
//                                                       focusedBorder:
//                                                           OutlineInputBorder(
//                                                         borderSide: const BorderSide(
//                                                           color:
//                                                               Color(0x00000000),
//                                                           width: 1.0,
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8.0),
//                                                       ),
//                                                       errorBorder:
//                                                           OutlineInputBorder(
//                                                         borderSide: const BorderSide(
//                                                           color:
//                                                               Color(0x00000000),
//                                                           width: 1.0,
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8.0),
//                                                       ),
//                                                       focusedErrorBorder:
//                                                           OutlineInputBorder(
//                                                         borderSide: const BorderSide(
//                                                           color:
//                                                               Color(0x00000000),
//                                                           width: 1.0,
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8.0),
//                                                       ),
//                                                       filled: true,
//                                                       fillColor:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .primaryBackground,
//                                                       contentPadding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                                   20.0,
//                                                                   24.0,
//                                                                   20.0,
//                                                                   24.0),
//                                                     ),
//                                                     style: FlutterFlowTheme.of(
//                                                             context)
//                                                         .bodyMedium
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           fontSize: 14.0,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     validator: _model
//                                                         .emailAddressLoginTextControllerValidator
//                                                         .asValidator(context),
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding: const EdgeInsetsDirectional
//                                                       .fromSTEB(
//                                                           0.0, 12.0, 0.0, 0.0),
//                                                   child: TextFormField(
//                                                     controller: _model
//                                                         .passwordLoginTextController,
//                                                     focusNode: _model
//                                                         .passwordLoginFocusNode,
//                                                     obscureText: !_model
//                                                         .passwordLoginVisibility,
//                                                     decoration: InputDecoration(
//                                                       labelText: 'Password',
//                                                       labelStyle:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .bodySmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 fontSize: 14.0,
//                                                                 letterSpacing:
//                                                                     0.0,
//                                                               ),
//                                                       hintText:
//                                                           'Enter your password...',
//                                                       hintStyle:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .bodySmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 fontSize: 16.0,
//                                                                 letterSpacing:
//                                                                     0.0,
//                                                               ),
//                                                       enabledBorder:
//                                                           OutlineInputBorder(
//                                                         borderSide: const BorderSide(
//                                                           color:
//                                                               Color(0x00000000),
//                                                           width: 1.0,
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8.0),
//                                                       ),
//                                                       focusedBorder:
//                                                           OutlineInputBorder(
//                                                         borderSide: const BorderSide(
//                                                           color:
//                                                               Color(0x00000000),
//                                                           width: 1.0,
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8.0),
//                                                       ),
//                                                       errorBorder:
//                                                           OutlineInputBorder(
//                                                         borderSide: const BorderSide(
//                                                           color:
//                                                               Color(0x00000000),
//                                                           width: 1.0,
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8.0),
//                                                       ),
//                                                       focusedErrorBorder:
//                                                           OutlineInputBorder(
//                                                         borderSide: const BorderSide(
//                                                           color:
//                                                               Color(0x00000000),
//                                                           width: 1.0,
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8.0),
//                                                       ),
//                                                       filled: true,
//                                                       fillColor:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .primaryBackground,
//                                                       contentPadding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                                   20.0,
//                                                                   24.0,
//                                                                   20.0,
//                                                                   24.0),
//                                                       suffixIcon: InkWell(
//                                                         onTap: () => setState(
//                                                           () => _model
//                                                                   .passwordLoginVisibility =
//                                                               !_model
//                                                                   .passwordLoginVisibility,
//                                                         ),
//                                                         focusNode: FocusNode(
//                                                             skipTraversal:
//                                                                 true),
//                                                         child: Icon(
//                                                           _model.passwordLoginVisibility
//                                                               ? Icons
//                                                                   .visibility_outlined
//                                                               : Icons
//                                                                   .visibility_off_outlined,
//                                                           color: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .secondaryText,
//                                                           size: 20.0,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     style: FlutterFlowTheme.of(
//                                                             context)
//                                                         .bodyMedium
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     validator: _model
//                                                         .passwordLoginTextControllerValidator
//                                                         .asValidator(context),
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding: const EdgeInsetsDirectional
//                                                       .fromSTEB(
//                                                           0.0, 24.0, 0.0, 0.0),
//                                                   child: FFButtonWidget(
//                                                     onPressed: () async {
//                                                       context.pushNamed(
//                                                           'auth_home');
//                                                     },
//                                                     text: 'Login',
//                                                     options: FFButtonOptions(
//                                                       width: 230.0,
//                                                       height: 50.0,
//                                                       padding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                                   0.0,
//                                                                   0.0,
//                                                                   0.0,
//                                                                   0.0),
//                                                       iconPadding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                                   0.0,
//                                                                   0.0,
//                                                                   0.0,
//                                                                   0.0),
//                                                       color:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .primary,
//                                                       textStyle:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .titleSmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 color: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .primaryBackground,
//                                                                 letterSpacing:
//                                                                     0.0,
//                                                               ),
//                                                       elevation: 3.0,
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Colors.transparent,
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               40.0),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding: const EdgeInsetsDirectional
//                                                       .fromSTEB(
//                                                           0.0, 20.0, 0.0, 24.0),
//                                                   child: FFButtonWidget(
//                                                     onPressed: () async {
//                                                       context.pushNamed(
//                                                           'auth_ForgotPassword');
//                                                     },
//                                                     text: '비밀번호를 잊으셨나요?',
//                                                     options: FFButtonOptions(
//                                                       width: 185.0,
//                                                       height: 40.0,
//                                                       padding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                                   0.0,
//                                                                   0.0,
//                                                                   0.0,
//                                                                   0.0),
//                                                       iconPadding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                                   0.0,
//                                                                   0.0,
//                                                                   0.0,
//                                                                   0.0),
//                                                       color: FlutterFlowTheme
//                                                               .of(context)
//                                                           .secondaryBackground,
//                                                       textStyle:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .titleSmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 color: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .primaryText,
//                                                                 letterSpacing:
//                                                                     0.0,
//                                                               ),
//                                                       elevation: 0.0,
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Colors.transparent,
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsetsDirectional.fromSTEB(
//                                             24.0, 0.0, 24.0, 0.0),
//                                         child: SingleChildScrollView(
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             children: [
//                                               Padding(
//                                                 padding: const EdgeInsetsDirectional
//                                                     .fromSTEB(
//                                                         0.0, 20.0, 0.0, 0.0),
//                                                 child: TextFormField(
//                                                   controller: _model
//                                                       .emailAddressTextController,
//                                                   focusNode: _model
//                                                       .emailAddressFocusNode,
//                                                   obscureText: false,
//                                                   decoration: InputDecoration(
//                                                     labelText: 'Email Address',
//                                                     labelStyle: FlutterFlowTheme
//                                                             .of(context)
//                                                         .bodySmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           fontSize: 14.0,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     hintText:
//                                                         'Enter your email...',
//                                                     hintStyle: FlutterFlowTheme
//                                                             .of(context)
//                                                         .bodySmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           fontSize: 16.0,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     enabledBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     focusedBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     errorBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     focusedErrorBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     filled: true,
//                                                     fillColor:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primaryBackground,
//                                                     contentPadding:
//                                                         const EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 20.0,
//                                                                 24.0,
//                                                                 20.0,
//                                                                 24.0),
//                                                   ),
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyMedium
//                                                       .override(
//                                                         fontFamily:
//                                                             'Readex Pro',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                                   validator: _model
//                                                       .emailAddressTextControllerValidator
//                                                       .asValidator(context),
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsetsDirectional
//                                                     .fromSTEB(
//                                                         0.0, 12.0, 0.0, 0.0),
//                                                 child: TextFormField(
//                                                   controller: _model
//                                                       .passwordCreateTextController,
//                                                   focusNode: _model
//                                                       .passwordCreateFocusNode,
//                                                   obscureText: !_model
//                                                       .passwordCreateVisibility,
//                                                   decoration: InputDecoration(
//                                                     labelText: 'Password',
//                                                     labelStyle: FlutterFlowTheme
//                                                             .of(context)
//                                                         .bodySmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           fontSize: 14.0,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     hintText:
//                                                         'Enter your password...',
//                                                     hintStyle: FlutterFlowTheme
//                                                             .of(context)
//                                                         .bodySmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           fontSize: 16.0,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     enabledBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     focusedBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     errorBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     focusedErrorBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     filled: true,
//                                                     fillColor:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primaryBackground,
//                                                     contentPadding:
//                                                         const EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 20.0,
//                                                                 24.0,
//                                                                 20.0,
//                                                                 24.0),
//                                                     suffixIcon: InkWell(
//                                                       onTap: () => setState(
//                                                         () => _model
//                                                                 .passwordCreateVisibility =
//                                                             !_model
//                                                                 .passwordCreateVisibility,
//                                                       ),
//                                                       focusNode: FocusNode(
//                                                           skipTraversal: true),
//                                                       child: Icon(
//                                                         _model.passwordCreateVisibility
//                                                             ? Icons
//                                                                 .visibility_outlined
//                                                             : Icons
//                                                                 .visibility_off_outlined,
//                                                         color:
//                                                             const Color(0x98FFFFFF),
//                                                         size: 20.0,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyMedium
//                                                       .override(
//                                                         fontFamily:
//                                                             'Readex Pro',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                                   validator: _model
//                                                       .passwordCreateTextControllerValidator
//                                                       .asValidator(context),
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsetsDirectional
//                                                     .fromSTEB(
//                                                         0.0, 12.0, 0.0, 0.0),
//                                                 child: TextFormField(
//                                                   controller: _model
//                                                       .passwordConfirmTextController,
//                                                   focusNode: _model
//                                                       .passwordConfirmFocusNode,
//                                                   obscureText: !_model
//                                                       .passwordConfirmVisibility,
//                                                   decoration: InputDecoration(
//                                                     labelText:
//                                                         'Confirm Password',
//                                                     labelStyle: FlutterFlowTheme
//                                                             .of(context)
//                                                         .bodySmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           fontSize: 14.0,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     hintText:
//                                                         'Enter your password...',
//                                                     hintStyle: FlutterFlowTheme
//                                                             .of(context)
//                                                         .bodySmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           fontSize: 16.0,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     enabledBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     focusedBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     errorBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     focusedErrorBorder:
//                                                         OutlineInputBorder(
//                                                       borderSide: const BorderSide(
//                                                         color:
//                                                             Color(0x00000000),
//                                                         width: 1.0,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8.0),
//                                                     ),
//                                                     filled: true,
//                                                     fillColor:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primaryBackground,
//                                                     contentPadding:
//                                                         const EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 20.0,
//                                                                 24.0,
//                                                                 20.0,
//                                                                 24.0),
//                                                     suffixIcon: InkWell(
//                                                       onTap: () => setState(
//                                                         () => _model
//                                                                 .passwordConfirmVisibility =
//                                                             !_model
//                                                                 .passwordConfirmVisibility,
//                                                       ),
//                                                       focusNode: FocusNode(
//                                                           skipTraversal: true),
//                                                       child: Icon(
//                                                         _model.passwordConfirmVisibility
//                                                             ? Icons
//                                                                 .visibility_outlined
//                                                             : Icons
//                                                                 .visibility_off_outlined,
//                                                         color:
//                                                             const Color(0x98FFFFFF),
//                                                         size: 20.0,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyMedium
//                                                       .override(
//                                                         fontFamily:
//                                                             'Readex Pro',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                                   validator: _model
//                                                       .passwordConfirmTextControllerValidator
//                                                       .asValidator(context),
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsetsDirectional
//                                                     .fromSTEB(
//                                                         0.0, 24.0, 0.0, 24.0),
//                                                 child: FFButtonWidget(
//                                                   onPressed: () {
//                                                     print('Button pressed ...');
//                                                   },
//                                                   text: 'Create Account',
//                                                   options: FFButtonOptions(
//                                                     width: 230.0,
//                                                     height: 50.0,
//                                                     padding:
//                                                         const EdgeInsetsDirectional
//                                                             .fromSTEB(0.0, 0.0,
//                                                                 0.0, 0.0),
//                                                     iconPadding:
//                                                         const EdgeInsetsDirectional
//                                                             .fromSTEB(0.0, 0.0,
//                                                                 0.0, 0.0),
//                                                     color: FlutterFlowTheme.of(
//                                                             context)
//                                                         .primary,
//                                                     textStyle: FlutterFlowTheme
//                                                             .of(context)
//                                                         .titleSmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Readex Pro',
//                                                           color: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .primaryBackground,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                     elevation: 3.0,
//                                                     borderSide: const BorderSide(
//                                                       color: Colors.transparent,
//                                                       width: 1.0,
//                                                     ),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             40.0),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
