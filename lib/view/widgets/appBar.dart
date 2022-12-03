import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ABar extends StatelessWidget {
  const ABar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Image.asset('assets/images/Group 8139.png',height: 3.h,),
        Image.asset('assets/images/Vector-5.png',height: 3.h,)
      ],
    );
  }
}