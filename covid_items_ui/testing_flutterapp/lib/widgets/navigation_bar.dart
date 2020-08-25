import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testingflutterapp/colors.dart';
class NavBar extends StatefulWidget {
  @override

  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context).size.width;
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth/10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(

            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
             
              width: screenWidth,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:kWhiteColor.withOpacity(0.3),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
             
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kChipColor,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.home,color: kWhiteColor,), onPressed: () {},
                    ),
                  ),
                  Container(
                 
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kChipColor,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.favorite_border,color:  kWhiteColor,), onPressed: () {},
                    ),
                  ),
                  Container(
                 
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:kChipColor,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.search,color:  kWhiteColor ,),  onPressed: () {},
                    ),
                  ),
                  Container(
                    
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kChipColor,
                    ),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.shoppingBag,color:  kWhiteColor ,),  onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}