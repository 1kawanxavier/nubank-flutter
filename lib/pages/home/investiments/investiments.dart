import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/pages/home/colors/colors_standard.dart';

class Investiments extends StatelessWidget {
  const Investiments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_textInvestimentsChevron(), InvestimentsValue(), consultValue()]
        ),
    );
  }



  _textInvestimentsChevron(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Investimentos', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        Icon(MdiIcons.chevronRight)
        
        ],
      );
  }


  InvestimentsValue(){
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text('O jeito nu de investir: sem asteriscos, \n linguagem fácil a partir de R\$ 1 real',
      style: TextStyle(color: Colors.grey),),
    );
  }

consultValue(){
  return Container(
    margin: EdgeInsets.only(top: 12, bottom: 12), 
    decoration: BoxDecoration(color: greyColor, borderRadius: BorderRadius.circular(18)),
    padding: EdgeInsets.all(16),
    child: Row(
      children: [
        Icon(MdiIcons.cash),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Consultar saldo para transferência', style: TextStyle(fontWeight: FontWeight.bold),),
        )
      ]
      ),
  );
}
}