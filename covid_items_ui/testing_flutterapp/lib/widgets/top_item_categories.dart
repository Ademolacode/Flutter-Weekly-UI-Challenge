import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testingflutterapp/colors.dart';
import 'package:testingflutterapp/model/top_item_model.dart';
import 'package:testingflutterapp/screens/details_screen.dart';

class TopItemCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300.0,
         
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              TopItemModel toppicks = destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(
                      destination: toppicks,
                    ),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 200.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                 
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: kTopContainerColor,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: toppicks.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 190.0,
                                  width: 200.0,
                                  image: AssetImage(toppicks.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                         
                            Positioned(
                           
                              left: 15.0,
                              bottom: 0,
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    toppicks.name,
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  Text(
                                    toppicks.maker,
                                    style: TextStyle(
                                      color:kWhiteColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '\$${toppicks.price}',
                                    style: TextStyle(
                                      color: kPriceColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  Row(
                                
                                    children: <Widget>[
                                      Container(
                                        height: 40,
                                         margin: EdgeInsetsDirectional.only(start: 130,bottom: 5),
                      
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        
                                             color: kIconColor,
                                        ),
                                        child: IconButton(
                                          icon: FaIcon(
                                            FontAwesomeIcons.shoppingBag,
                                            color: kWhiteColor,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
