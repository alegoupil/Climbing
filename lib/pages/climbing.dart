import 'package:flutter/material.dart';
import 'package:climbing/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClimbingPage extends StatelessWidget {
  const ClimbingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top:200.0, bottom: 300),
          child: Text(
            "00:00",
            style: TextStyle(letterSpacing: 3, fontSize: 70, fontWeight: FontWeight.w700)
          ),
        ),
        ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.pink,
        foregroundColor: MyColors.almostBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        fixedSize: const Size(320,100)
        ), 
        onPressed: () {},
        icon: Padding(
          padding: const EdgeInsets.all(3.0),
          child: SvgPicture.asset('assets/icons/start.svg'),
        ),
        label: const Text(
          'Start climbing',
          style: TextStyle(letterSpacing: 0, fontWeight: FontWeight.w600 ,fontSize: 34)
        ),
        ),
      ],
    ); 
  }
}