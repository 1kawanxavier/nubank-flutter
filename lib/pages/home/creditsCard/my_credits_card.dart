import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/pages/home/colors/colors_standard.dart';

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(16, 10, 20, 10),
          decoration: BoxDecoration(
            color: greyColor, borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
                Icon(MdiIcons.creditCard, color: Colors.black,) ,
                SizedBox(width: 12,),
                Text('Meus Cartões', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
              ]
            ),
    );

  }
}