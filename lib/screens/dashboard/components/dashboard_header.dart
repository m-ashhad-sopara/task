import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../style/style.dart';

class DashboardHeader extends StatefulWidget {
  DashboardHeader({required this.height, required this.width, Key? key})
      : super(key: key);

  late double height;
  late double width;

  @override
  State<DashboardHeader> createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  late double _blockSizeHorizontal;
  late double _blockSizeVertical;
  late double height;
  late double width;

  @override
  void initState() {
    super.initState();
    height = widget.height;
    width = widget.width;

    _blockSizeVertical = height / 100;
    _blockSizeHorizontal = width / 100;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: _blockSizeHorizontal * 100,
              height: _blockSizeVertical * 87,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(20)),
                  color: CustomColors.customDashbordHeader),
            ),
          ),
           Positioned(
            top: _blockSizeHorizontal * 10,
              child: const Image(
                  image: AssetImage('assets/images/servaid-icon.png'))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: _blockSizeHorizontal * 90,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  fillColor: CustomColors.customWhite,
                  filled: true,
                  hintText: 'Search Products here...',
                  isDense: true,
                  // Added this
                  contentPadding: EdgeInsets.all(_blockSizeVertical * 8),
                  // contentPadding: EdgeInsets.only(left: _blockSizeHorizontal),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
