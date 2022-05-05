// import 'package:flutter/material.dart';
// import 'package:kanu/Widgets/app_bar_widget.dart';

// enum ButtonState { init, loading, done }

// class AnimatedButton extends StatefulWidget {
//   const AnimatedButton({Key? key}) : super(key: key);

//   @override
//   State<AnimatedButton> createState() => _AnimatedButtonState();
// }

// class _AnimatedButtonState extends State<AnimatedButton> {
//   bool isAnimating = true;
//   ButtonState state = ButtonState.init;
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     final isStrtched = isAnimating || state == ButtonState.init;
//     final isDone = state == ButtonState.done;
//     return Scaffold(
//       appBar: AppBarWidget(title: 'Download Book'),
//       body: Container(
//         alignment: Alignment.center,
//         padding: const EdgeInsets.symmetric(horizontal: 110),
//         child: AnimatedContainer(
//           duration: Duration(seconds: 1),
//           curve: Curves.easeIn,
//           width: state == ButtonState.init ? width : 80,
//           onEnd: () => setState(() {
//             isAnimating = !isAnimating;
//           }),
//           height: 80,
//           child: isStrtched ? buildButton() : buildSmallButton(isDone),
//         ),
//       ),
//     );
//   }

//   Widget buildButton() {
//     return OutlinedButton(
//         style: OutlinedButton.styleFrom(
//             shape: StadiumBorder(),
//             side: BorderSide(color: Colors.blue, width: 3)),
//         onPressed: () async {
//           setState(() {
//             state = ButtonState.loading;
//           });
//           await Future.delayed(Duration(seconds: 4));
//           setState(() {
//             state = ButtonState.done;
//           });
//           await Future.delayed(Duration(seconds: 2));
//           setState(() {
//             state = ButtonState.init;
//           });
//         },
//         child: FittedBox(
//           child: Text(
//             'DOWNLOAD',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w700,
//               color: Colors.blue,
//               letterSpacing: 2,
//             ),
//           ),
//         ));
//   }

//   Widget buildSmallButton(bool isDone) {
//     final color = isDone ? Colors.green : Colors.blue;
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: color,
//       ),
//       child: Center(
//           child: isDone
//               ? Icon(Icons.done, size: 52, color: Colors.white)
//               : CircularProgressIndicator(
//                   color: Colors.white,
//                 )),
//     );
//   }
// }
