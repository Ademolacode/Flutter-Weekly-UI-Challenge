import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> with TickerProviderStateMixin {

  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SafeArea(
            child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.4, 1],
              colors: [Colors.blue, Colors.pinkAccent],
            ),
          ),
         child: Center(
        child: TweenAnimationBuilder(
          tween: _scaleTween,
          duration: Duration(milliseconds: 700),
          builder: (context, scale, child) {
            return Transform.scale(scale: scale, child: child);
          },
          child: Container(
            width: 200,
            child: Image.asset('assets/images/success.png', fit: BoxFit.contain,),
         ),
        ),
      ),
        ),

        ),
    );
  }
}

