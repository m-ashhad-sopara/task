import 'package:flutter/material.dart';
import 'package:task/screens/dashboard/components/dashboard_header.dart';
import 'package:task/screens/dashboard/components/product_card.dart';
import 'package:task/style/style.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late MediaQueryData _responsive;
  late double _height;
  late double _width;

  // late double _shortSize;
  late double _blockSizeHorizontal;
  late double _blockSizeVertical;

  @override
  Widget build(BuildContext context) {
    _responsive = MediaQuery.of(context);
    _height = _responsive.size.height;

    _width = _responsive.size.width;
    _blockSizeHorizontal = _width / 100;
    _blockSizeVertical = _height / 100;

    return Scaffold(
      backgroundColor: CustomColors.customDashbordBg,
      body: Column(
        children: [
          Container(
            height: _responsive.padding.top,
          ),
          DashboardHeader(
            height: _blockSizeVertical * 22,
            width: _blockSizeHorizontal * 100,
          ),
          Container(height: 100, width: 100, child: ProductCard('assets/images/servaid-icon.png','asad',12,_blockSizeVertical * 22,_blockSizeHorizontal * 30,)),
        ],
      ),
    );
  }
}
