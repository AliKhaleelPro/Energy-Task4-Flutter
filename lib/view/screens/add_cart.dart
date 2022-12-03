import 'package:dart_flutter_task3/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:readmore/readmore.dart';

class AddCart extends StatelessWidget {
   AddCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                     icon: Icon(Icons.arrow_back,size: 4.h,) ,

                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/Gro.png',
                          height: 35.h,
                        ))
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Cool Berry',
                  style: GoogleFonts.montserrat(
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 2.5.h,
                      color: Color(0xffFFB447),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      '5.0',
                      style: GoogleFonts.montserrat(
                          fontSize: 12.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      '(2343 Reviews)',
                      style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                readMoreText(),
                SizedBox(
                  height: 2.h,
                ),
                offerContainer(),
                SizedBox(
                  height: 2.h,
                ),

                Text(
                  'Size',
                  style: GoogleFonts.montserrat(
                      fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),

                SizedBox(
                  height: 2.h,
                ),

                listSize(),
                SizedBox(
                  height: 2.h,
                ),

                Container(
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: backColor,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Price',
                            style: GoogleFonts.montserrat(
                              color: Colors.grey,
                                fontSize: 12.sp, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '₹ 100',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      Material(


                        color: bGreenColor,
                        borderRadius: BorderRadius.circular(30),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 12),
                          child: Text(
                            'Add to cart',
                            style: GoogleFonts.montserrat(color: Colors.white,
                                fontSize: 16.sp, fontWeight: FontWeight.w500),
                          ),
                        ) ,
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox listSize() {
    return SizedBox(
            height: 3.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                  itemBuilder: (context,i){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 2.h,
                    width: 18.w,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:i==0? bGreenColor : Colors.grey)
                    ),
                    child: Center(
                      child: Text(
                        str[i],
                        style: GoogleFonts.montserrat(color:i==0? bGreenColor : Colors.grey ,
                            fontSize: 11.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                );
              })
            );
  }
  List <String> str = [
  'Can',
  '300 ml',
  '1 ltr',
  '2 ltr',

];
  ReadMoreText readMoreText() {
    return ReadMoreText(
              'The fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing taste The fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing taste .',
              trimLines: 2,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: bGreenColor),
            );
  }

  Container offerContainer() {
    return Container(
              height: 12.h,
              color: Color.fromRGBO(13, 178, 149, 0.1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Text(
                      'Offer',
                      style: GoogleFonts.montserrat(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: bGreenColor,
                          size: 20,
                        ),
                        SizedBox(width: 2.w,),
                        Text(
                          'Code TRYNEW applied!',
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 15.w,),
                        Text(
                          '₹ 500.00',
                          style: GoogleFonts.montserrat(
                              fontSize: 14.sp, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '25 % off up to ₹ 100 ',
                          style: GoogleFonts.montserrat(color: Colors.grey,
                              fontSize: 10.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Remove ',
                          style: GoogleFonts.montserrat(color: bGreenColor,
                              fontSize: 10.sp, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),


                  ],


                ),
              ),
            );
  }
}

