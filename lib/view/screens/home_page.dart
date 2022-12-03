import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dart_flutter_task3/constant/constant.dart';
import 'package:dart_flutter_task3/view/screens/my_cart.dart';
import 'package:dart_flutter_task3/view/widgets/appBar.dart';
import 'package:dart_flutter_task3/view/widgets/grid_card.dart';
import 'package:dart_flutter_task3/view/widgets/list_tab.dart';
import 'package:dart_flutter_task3/view/widgets/offer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIconIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ABar(),
                SizedBox(
                  height: 5.h,
                ),
                OfferCard(),
                SizedBox(
                  height: 5.h,
                ),
                //TabBar----------------
                Text(
                  'All Flavours',
                  style: GoogleFonts.montserrat(
                      fontSize: 20.sp, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 2.h,
                ),

                GridCard(),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,

          //Colors.transparent,
          index: selectedIconIndex,
          buttonBackgroundColor: bGreenColor,

          height: 60,
          color: Colors.white,
          onTap: (index) {
            setState(
                  () {
                    selectedIconIndex = index;
                  }
            );
          },
           animationDuration: Duration(milliseconds: 500),
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: selectedIconIndex == 0 ?Colors.white : Colors.black87,
            ),
            IconButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCart()));

              } ,

             icon: Icon( Icons.shopping_cart_outlined,size: 30),

              color: selectedIconIndex == 1 ? Colors.white : Colors.black87,
            ),
            Icon(
              Icons.bookmark_border,
              size: 30,
              color: selectedIconIndex == 2 ?Colors.white : Colors.black87,
            ),
            Icon(
              Icons.notifications_none,
              size: 30,
              color: selectedIconIndex == 3 ? Colors.white : Colors.black87,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/11111.jpeg'),

            )

          ]),
    );
  }
}


