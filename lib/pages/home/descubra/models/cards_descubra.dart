
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nubank/pages/home/colors/colors_standard.dart';

class CardsModel extends StatelessWidget {

  String imagem;
  String title;
  String describe;
  String button;
  
  CardsModel({Key? key, required this.imagem, required this.title, required this.describe, required this.button}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
            Image.asset(imagem, fit: BoxFit.cover, width: 230,),
            SizedBox(height: 22,),
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(height: 16,),
            Text(describe, style: TextStyle(color: Colors.grey,)),
            Container(
              margin: EdgeInsets.only(left: 12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: backgroundColor),

              child: Text(button, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
    );
  }
}