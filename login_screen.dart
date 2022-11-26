// import 'package:flutter/material.dart';
// import 'package:wave/config.dart';
// import 'package:wave/wave.dart';
//
// class LogInScreen extends StatefulWidget {
//   const LogInScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LogInScreen> createState() => _LogInScreenState();
// }
//
// class _LogInScreenState extends State<LogInScreen> {
//
//
//   static const _backgroundColor = Color(0xFFF15BB5);
//
//   static const _colors = [
//     Color(0xFFFEE440),
//     Color(0xFF00BBF9),
//   ];
//
//   static const _durations = [
//     5000,
//     4000,
//   ];
//
//   static const _heightPercentages = [
//     0.65,
//     0.66,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("hiii"),
//       ),
//       body: WaveWidget(
//         config: CustomConfig(
//           colors: _colors,
//           durations: _durations,
//           heightPercentages: _heightPercentages,
//         ),
//         backgroundColor: _backgroundColor,
//         size: Size(double.infinity, double.infinity),
//         waveAmplitude: 0,
//       ),
//     );
//   }
// }



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:wave/config.dart';
// import 'package:wave/wave.dart';
// import 'package:nb_utils/nb_utils.dart';  //https://pub.dev/packages/nb_utils
//
// class DemoWaveScreen extends StatefulWidget {
//   static String tag = '/DemoWaveScreen';
//
//   @override
//   DemoWaveScreenState createState() => DemoWaveScreenState();
// }
//
// class DemoWaveScreenState extends State<DemoWaveScreen> {
//   // Color appColorPrimary = Color(0xFF1157FA);
//   Color appColorPrimary = Colors.white;
//
//   @override
//   Widget build(BuildContext context) {
//     changeStatusColor(appColorPrimary);
//     return Scaffold(
//       body: WaveWidget(
//         config: CustomConfig(
//           gradients: [
//             [Color(0xFF676B76), Color(0xEE676B76)],
//             [Color(0xFFECB099), Color(0xEEECB099)],
//             [Color(0xFFdea34b), Color(0xEEdea34b)],
//             [Color(0xFFA3CEB6), Color(0xEEA3CEB6)],
//           ],
//           durations: [35000, 19440, 10800, 6000],
//           heightPercentages: [0.20, 0.23, 0.25, 0.30],
//           blur: MaskFilter.blur(BlurStyle.solid, 10),
//           gradientBegin: Alignment.bottomLeft,
//           // gradientEnd: Alignment.topRight,
//         ),
//         waveAmplitude: 4,
//         backgroundColor: Colors.white,
//         size: Size(double.infinity, double.infinity),
//          // duration: 20,
//       ),
//
//
//     );
//   }
//
//   void changeStatusColor(Color color) async {
//     setStatusBarColor(color);
//   }
// }
