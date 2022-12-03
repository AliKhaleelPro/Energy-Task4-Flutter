import 'package:dart_flutter_task3/constant/constant.dart';
import 'package:dart_flutter_task3/data/data.dart';
import 'package:dart_flutter_task3/model/product.dart';
import 'package:dart_flutter_task3/view/screens/add_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class GridCard extends StatelessWidget {
   GridCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: GridView.builder(

          gridDelegate:
          const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20),
          itemCount: products.length,
          itemBuilder: (BuildContext context, index) {
            return buildContainer(context: context,image:products[index].img.toString(),title: products[index].title.toString(),price: products[index].price.toString());
          }),
    );
  }

  Widget buildContainer({required BuildContext context,required String image, title, price}) {
    return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
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
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        minWidth: 20,
                        child: InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCart())),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        color: backColor),
                  ],
                )
              ],
            ),
          );
  }
}