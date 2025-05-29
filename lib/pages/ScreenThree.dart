import 'package:flutter/material.dart'; 
import '../styles/AppTheme.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
                 boxWidget(),
                 boxWidget(),
                 boxWidget(),
                 boxWidget(),                 
            ],
          ),
           const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ 
                 boxWidget(),
                 boxWidget(),
                 boxWidget(),
                 boxWidget(),
                 
            ],
          ),
        ],
      ),
    );
  }

  boxWidget() {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.blue[400],
          border: Border.all(color: Color.fromARGB(255, 110, 234, 76), width: 0.5)),
      child: Center(
          child:
              Text("Box", style: AppTheme.tTrxTextRed)),
    );
  }
}