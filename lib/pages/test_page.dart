// import 'package:flutter/material.dart';
// import 'package:simple_animations/simple_animations.dart';
// import 'package:supercharged/supercharged.dart';

// // ignore: must_be_immutable
// class TestPage extends StatelessWidget {
//   TestPage({Key? key, required this.child,required this.second}) : super(key: key);
//   Widget child;
//   double second;

//   @override
//   Widget build(BuildContext context) {
//     return MirrorAnimation<double>(
//       tween: (-100.0).tweenTo(100.0), // <-- value for offset x-coordinate
//       duration: second.seconds,
//       curve: Curves.easeInOutSine, // <-- non-linear animation
//       builder: (context, child, value) {
//         return Transform.translate(
//           offset: Offset(0, value), // <-- use animated value for x-coordinate
//           child: child,
//         );
//       },
//       child: child,
//     );
//   }
// }
