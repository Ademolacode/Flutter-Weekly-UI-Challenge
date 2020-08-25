import 'package:flutter/material.dart';
import 'package:testingflutterapp/colors.dart';
import 'package:testingflutterapp/model/bottom_item_model.dart';
class BottomItemCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Sanitization',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: kChipTextColor,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: kChipTextColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 400.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              ItemModel hotel = items[index];
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 240.0,
                height: 500,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                      height: 230,
                      
                      decoration: BoxDecoration(
                        color: kBottomContainerColor ,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      
                       
                      child: Column(
                        children: [
                            Text(
                                  hotel.name,
                                  style: TextStyle(
                                    color:kTextColor,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                            
                          
                            ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height: 200.0,
                          width: 220.0,
                          image: AssetImage(hotel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),

                        ],
                      ),
                    
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
    
  }
}
