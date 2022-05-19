import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../style/style.dart';

/*Widget ProductCard(){
  return const Card(

color: Colors.red,
  );
}*/


Material ProductCard(String asset, String titleText, double fontSize,double height, double width) {

  // late double height;
  // late double width;


  late double _blockSizeHorizontal = height / 100;
  late double _blockSizeVertical = width / 100;



  return Material(
    color: CustomColors.customGreyWhite,
    elevation: 1.0,
    // shadowColor: CustomColors.customGrey,
    borderRadius: BorderRadius.circular(24.0),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: _blockSizeVertical * 10,
                child: Image.asset(
                  asset,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _blockSizeHorizontal),
                child: SizedBox(
                  width: _blockSizeVertical * 20,
                  child: FittedBox(
                    // fit: BoxFit.fitWidth,
                    fit: BoxFit.scaleDown,
                    // width: blockSizeHorizontal * 20,
                    child: Text(
                      titleText,
                      style: TextStyle(
                          color: CustomColors.customWhite,
                          fontSize: _blockSizeVertical * 3.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}