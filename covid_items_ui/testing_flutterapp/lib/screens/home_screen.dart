import 'package:flutter/material.dart';
import 'package:testingflutterapp/colors.dart';
import 'package:testingflutterapp/widgets/bottom_item_categories.dart';
import 'package:testingflutterapp/widgets/navigation_bar.dart';
import 'package:testingflutterapp/widgets/top_item_categories.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Home'),
        leading: IconButton(   icon: Icon(
              Icons.menu,
              size: 25.0,
            ) , onPressed: () {},),
            actions: <Widget>[
              CircleAvatar(
                  radius: 15.0,
              backgroundImage: AssetImage('',), 
              )
            ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 15.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        ChoiceChip(
                          label: Text('Vaccine'),
                          selected: _isSelected,
                          labelStyle: TextStyle(
                            color: kChipTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          onSelected: (selected) {
                            setState(() {
                              _isSelected = selected;
                            });
                          },
                          selectedColor: kDetailColor,
                        ),
                         ChoiceChip(
                          label: Text('Mask'),
                          selected: _isSelected,
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          onSelected: (selected) {
                          }
                        ),
                         ChoiceChip(
                          label: Text('Gloves'),
                          selected: _isSelected,
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          onSelected: (selected) {
                          
                          },
                         
                        ),
                         ChoiceChip(
                          label: Text('Sanitizer'),
                          selected: _isSelected,
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          onSelected: (selected) {
                          }
                           
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
       
            SizedBox(height: 20.0),
            TopItemCategory(),
            SizedBox(height: 20.0),
            BottomItemCategory(),
                    NavBar(),  
          ],
          
        ),
        
      ),
    );
  }
}
