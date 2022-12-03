import 'package:dart_flutter_task3/constant/constant.dart';
import 'package:dart_flutter_task3/data/data.dart';
import 'package:dart_flutter_task3/model/product.dart';
import 'package:dart_flutter_task3/view/widgets/appBar.dart';
import 'package:dart_flutter_task3/view/widgets/grid_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);
  final Product product = Product();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ABar(),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'My Cart',
                style: GoogleFonts.montserrat(
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.h,
              ),
              CartContainer(
                  image: 'assets/images/11.png', title: 'Cool', price: '200'),
              Container(
                height: 10.h,
                color: Color.fromRGBO(13, 178, 149, 0.1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.montserrat(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹ 350',
                        style: GoogleFonts.montserrat(
                            fontSize: 16.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CartContainer({required String image, title, price}) {
    return SizedBox(
      height: 50.h,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20),
          itemCount: 2,
          itemBuilder: (BuildContext context, index) {
            return Container(
              height: 30.h,
              width: 50.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Center(
                    child: Image.asset(
                      image,
                      height: 10.h,
                    ),
                  ),
                  Text(
                    'All New',
                    style: GoogleFonts.montserrat(
                        color: bGreenColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                        color: backColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: GoogleFonts.montserrat(
                            color: backColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          minWidth: 20,
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          color: backColor),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
