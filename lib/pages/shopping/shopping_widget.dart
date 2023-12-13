import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ShoppingWidget extends StatelessWidget {
  const ShoppingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:20, vertical: 12 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _shoppingTitleChevron(),
          SizedBox(height: 15),
          Text('Vantagens exclusivas das nossas marcas \n preferidas', style: TextStyle(color: Colors.grey),)
        ]
        ),
    );
  }

  _shoppingTitleChevron(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Shopping', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }
}