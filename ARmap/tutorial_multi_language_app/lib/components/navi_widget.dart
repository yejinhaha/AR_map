// import '/flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'navi_model.dart';
// export 'navi_model.dart';
//
// class NaviWidget extends StatefulWidget {
//   const NaviWidget({super.key});
//
//   @override
//   State<NaviWidget> createState() => _NaviWidgetState();
// }
//
// class _NaviWidgetState extends State<NaviWidget> {
//   late NaviModel _model;
//
//   @override
//   void setState(VoidCallback callback) {
//     super.setState(callback);
//     _model.onUpdate();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => NaviModel());
//   }
//
//   @override
//   void dispose() {
//     _model.maybeDispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//         // Make this side nav a component. You can then set the colors of the icons to be selected base on an integer.
//         Visibility(
//       visible: responsiveVisibility(
//         context: context,
//         phone: false,
//         tablet: false,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Container(
//           width: 72.0,
//           height: double.infinity,
//           decoration: BoxDecoration(
//             color: const Color(0xFF6F61EF),
//             boxShadow: const [
//               BoxShadow(
//                 blurRadius: 0.0,
//                 color: Color(0xFFE5E7EB),
//                 offset: Offset(
//                   1.0,
//                   0.0,
//                 ),
//               )
//             ],
//             borderRadius: BorderRadius.circular(12.0),
//             border: Border.all(
//               color: const Color(0x9AFFFFFF),
//               width: 2.0,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 // Logo should go here.
//                 const Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
//                   child: Icon(
//                     Icons.add_task_rounded,
//                     color: Colors.white,
//                     size: 32.0,
//                   ),
//                 ),
//                 const Divider(
//                   height: 12.0,
//                   thickness: 2.0,
//                   color: Color(0x4D9489F5),
//                 ),
//                 Container(
//                   width: 44.0,
//                   height: 44.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF6F61EF),
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Icon(
//                       Icons.ssid_chart_rounded,
//                       color: Color(0x9AFFFFFF),
//                       size: 24.0,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 44.0,
//                   height: 44.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0x4D9489F5),
//                     borderRadius: BorderRadius.circular(12.0),
//                     border: Border.all(
//                       color: const Color(0x4D9489F5),
//                     ),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Icon(
//                       Icons.forum_rounded,
//                       color: Colors.white,
//                       size: 24.0,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 44.0,
//                   height: 44.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF6F61EF),
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Icon(
//                       Icons.groups_sharp,
//                       color: Color(0x9AFFFFFF),
//                       size: 24.0,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 44.0,
//                   height: 44.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF6F61EF),
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Icon(
//                       Icons.table_chart_outlined,
//                       color: Color(0x9AFFFFFF),
//                       size: 24.0,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 44.0,
//                   height: 44.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF6F61EF),
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Icon(
//                       Icons.settings_rounded,
//                       color: Color(0x9AFFFFFF),
//                       size: 24.0,
//                     ),
//                   ),
//                 ),
//               ].divide(const SizedBox(height: 16.0)),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
