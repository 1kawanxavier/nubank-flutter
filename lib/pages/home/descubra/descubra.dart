// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nubank/pages/home/colors/colors_standard.dart';

class DescubraWidget extends StatelessWidget {
  const DescubraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Descubra mais', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 16,),
          descubraCards(),
        ]
        ),
    );
  }

  descubraCards(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        CardsModel(imagem: 'assets/image/indique-amigos.jpg', title: 'Indique o Nu para amigos', describe: 'Espalhe como é simples estar\n no controle\n', button: 'Indicar amigos'),
        SizedBox(width: 12,),

        CardsModel(imagem: 'assets/image/seguro-auto-nubank.jpg', title: 'NuBank Auto', describe: 'Aproveite seu carro com toda\n tranquilidade.\n', button: 'Simule agora'),
        SizedBox(width: 12,),

        CardsModel(imagem: 'assets/image/Seguro-de-Vida-Nubank.png', title: 'Área de Seguros do Nu', describe: 'Toda proteção para você e para\n quem você ama num só lugar\n', button: 'Conhecer'),
        SizedBox(width: 12,),
        
        

        CardsModel(imagem: 'assets/image/whatsapp-nubank-transferencia.webp', title: 'Whatsapp', describe: 'Pagamentos seguros, rápidos e\n sem tarifa. A experiência...\n', button: 'Quero conhecer'),
        SizedBox(width: 12,),


      ]),
    );
  }


}






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