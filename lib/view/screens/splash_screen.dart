import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xff0E1514),
      body: Stack(
        alignment: Alignment.center,

        children: [
          IntroductionScreen(

            showNextButton: false,
            globalBackgroundColor: Color(0xff0E1514),
          //back: backSvghPicture(),

            done: Icon(Icons.ac_unit),
            onDone: (){},
            pages: [
              PageViewModel(
                image:Image.asset('assets/images/p.png',alignment: Alignment.center) ,
                titleWidget:  Text(
                  '  ENJOY\nEVERY SIP',
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w900),
                ),
                bodyWidget:  Text(
                  ' The ultimate refreshing drink\n     to enjoy in every festival',
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
                decoration: PageDecoration(
                 bodyAlignment: Alignment.center,
                  bodyPadding: EdgeInsets.all(20),
                 imageAlignment: Alignment.center
                )



              ),
            ],
          ),
          // Container(
          //     height: 100.h,
          //     color: Color(0xff0E1514) ,
          //     child: backSvghPicture()),

        ],
      )
    );
  }

  Widget backSvghPicture() {
    return Column(
      children: [
        SizedBox(
          height: 9.h,
        ),
        SvgPicture.asset(
          'assets/images/FIZZ.svg',
        ),
        SizedBox(
          height: 2.h,
        ),
        SvgPicture.asset(
          'assets/images/FIZZ.svg',
        ),
        SizedBox(
          height: 2.h,
        ),
        SvgPicture.asset(
          'assets/images/FIZZ.svg',
        ),
        SizedBox(
          height: 2.h,
        ),
        SvgPicture.asset(
          'assets/images/FIZZ.svg',
        ),
        SizedBox(
          height: 2.h,
        ),
        SvgPicture.asset(
          'assets/images/FIZZ.svg',
        ),
      ],
    );
  }
}
