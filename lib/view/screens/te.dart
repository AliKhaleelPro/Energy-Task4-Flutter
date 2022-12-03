import 'package:dart_flutter_task3/constant/constant.dart';
import 'package:dart_flutter_task3/view/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1514),
      body: Stack(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Center(child: backSvghPicture()),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color.fromARGB(255, 14, 217, 197),
                          Colors.teal.shade300.withOpacity(0.001),
                        ],
                      ),
                    ),
                  )),
              Column(
                children: [
                  SizedBox(
                    height: 6.h,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/p.png',
                        height: 50.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    '  ENJOY\nEVERY SIP',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    ' The ultimate refreshing drink\n     to enjoy in every festival',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                        controller: PageController(initialPage: 0),  // PageController
                        count:  3,
                        effect:  WormEffect(activeDotColor: Colors.white),  // your preferred effect
                        onDotClicked: (index){

                        }
                    )
                    ,
                    InkWell(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            ),
                        child: Image.asset(
                          'assets/images/button.png',
                          height: 10.h,
                        )),
                  ],
                ),
              )),
        ],
      ),
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
