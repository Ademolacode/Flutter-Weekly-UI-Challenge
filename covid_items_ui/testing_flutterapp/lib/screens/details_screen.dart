import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testingflutterapp/colors.dart';
import 'package:testingflutterapp/model/top_item_model.dart';

class DetailsScreen extends StatefulWidget {

    final TopItemModel destination;

  DetailsScreen({this.destination});
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
   int quantity =1;
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
  @override
   double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Container(
color: kDetailColor,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Stack(

              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: [
                Container(

                  height: 200,
                  width: screenWidth,
                  margin: EdgeInsets.fromLTRB(20,0,20,20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                color: kChipColor,
                   
                  ),
                ),
                 Positioned(
                   top: 0,
                   child: Hero(
                    tag: widget.destination.imageUrl,
                     child: Image.asset(widget.destination.imageUrl,height: 240,),
                   ),
                 ),
                Positioned(
                  top: 5,
                  left: 15,
                  right: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back,color: Colors.grey),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      IconButton(
                          icon:isFav?Icon(Icons.favorite,color: Colors.red[400],) :Icon(Icons.favorite_border,color: Colors.white),
                        onPressed: (){
                            setState(() {
                              isFav=!isFav;
                            });
                        },
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top:40),
                child: Text(widget.destination.name, style: TextStyle(color: kTextColor, fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            Text(widget.destination.maker, style: TextStyle(color: kTextColor),),
            Container(

                margin: EdgeInsets.all(20),
                child: Text('A COVID-19 manufacturing plant of the institute in Kunming, capital city '
                    'Yunnan Province, will be put into use in the second half of 2020', style: TextStyle(color: kTextColor),)
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 2,
                  width: screenWidth/4,
                  color:  kIconColor,
                 
                ),
                Text(  '\$${widget.destination.price}', style: TextStyle(color: kPriceColor,),),

                Container(
                  height: 2,
                  width: screenWidth/4,
                  color:  kIconColor,
                  
                ),
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhiteColor,

                ),
                child: Text('50 ml'),),
              Container(
                margin: EdgeInsetsDirectional.only(start: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBottomContainerColor,
               

                ),
                child: Text('100 ml'),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(start: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                 color: kBottomContainerColor,
                  
                ),
                child: Text('150 ml',),
              ),

            ],
          ),
          Container(
           margin: EdgeInsets.symmetric(vertical: 30,horizontal: screenWidth/3.5),
            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),

            decoration: BoxDecoration(
              color:  kBottomContainerColor ,
              
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kBackgroundColor,
                

                  ),

                  child: IconButton(
                    onPressed: (){
                      if(quantity>1) {
                        setState(() {
                          quantity--;
                        });
                      }
                    },
                    icon: Icon(Icons.remove,color:  kWhiteColor,),

                  ),
                ),
                Text('$quantity',),
                Container(
                  padding: EdgeInsets.all(0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  kWhiteColor,
                  ),
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                        quantity++;
                      });
                    },
                    icon: Icon(Icons.add,),

                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: FlatButton(
              color: kAddBtnColor,
              onPressed: (){},
              padding: EdgeInsets.all(10),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
             
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.shoppingBag,),
                  Text(' Add to bucket', )
                ],
              ),
            ),
          ),
          ],
        ),
    ),
    );
  }
}
