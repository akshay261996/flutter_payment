import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
// import '../Components/Elevated_button.dart';
import '../Home/Payment/DeclineScreen.dart';

// class ElevatedButton extends StatefulWidget {
//   //const ElevatedButton({super.key});

//   String name;
//   ElevatedButton({super.key, required this.name});

//   @override
//   State<ElevatedButton> createState() => _ElevatedButtonState();
// }

// class _ElevatedButtonState extends State<ElevatedButton> {
//   @override
//   Widget build(BuildContext context) {
//     String name;
//     return Container(
//         height: 50,
//         decoration: BoxDecoration(color: Colors.blue),
//         child: Center(
//           child: Text(name),
//         ));
//   }
// }
//-------------------------------------------------------------------------
class Elevatedbutton extends StatelessWidget {
  //const ElevatedButton({super.key});

  String name;
  VoidCallback onPressed;
  Elevatedbutton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: onPressed,
          // child: Container(
          //    height: 40,
          //    width: 50,
          child: Text(name),
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent.shade700,
            // minimumSize: const Size.fromHeight(49),
            //maximumSize: Size(1, 1),
            //minimumSize:const Size.fromWidth(10),
            minimumSize:Size(100, 40),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            // decoration: BoxDecoration(color: Colors.blue),
            // borderRadius: BorderRadius.all(
            //      Radius.circular(5.0),
          )),
    );
  }
}
