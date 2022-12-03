
import 'package:dart_flutter_task3/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27.h,

      child: Stack(
        children: [
          Center(
            child: Container(
              height: 23.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: backColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Stack(
                      children: [
                        Image.asset('assets/images/Fz.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '30% Off',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'The Holi \nOffer',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w800),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              color: Colors.white,
                              child: Text('Buy Now',style: GoogleFonts.montserrat(
                                  color: Color(0xff110000),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 0.1.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff46BFA9).withOpacity(0.5),
                          spreadRadius: 83,
                          blurRadius: 99,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],

                    ),

                  ),

                ],
              ),
            ),
          ),
          Positioned(
              right: 2.h,
              top: -0.5.h,
              child: Image.asset('assets/images/ud.png',height: 25.h,)),



        ],
      ),
    );
  }
}