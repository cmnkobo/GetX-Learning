// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Increment Text Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   RxInt _counter = 0.obs;
//   late Widget _textWidget;

//   @override
//   void initState() {
//     super.initState();
//     _textWidget = _buildTextWidget();
//     _startTimer();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   // Widget _buildTextWidget() {
//   //   return GetBuilder<_MyHomePageState>(
//   //     init: this,
//   //     builder: (_) {
//   //       return Center(
//   //         child: Text(
//   //           'Count: $_counter',
//   //           style: const TextStyle(fontSize: 24.0),
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }

// //   void _startTimer() {
// //     Timer.periodic(const Duration(seconds: 5), (timer) {
// //       _counter++;
// //       setState(() {
// //         _textWidget = _buildTextWidget();
// //       });
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Increment Text Example'),
// //       ),
// //       body: _textWidget,
// //     );
// //   }
// // }
