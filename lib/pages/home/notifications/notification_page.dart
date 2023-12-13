import 'package:flutter/material.dart';
import 'package:nubank/pages/home/colors/colors_standard.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _rendimentos(),
          _saveMoney(),
          _securityLife(),
          _friendsRecomended()
        ],
      ),
    );
  }

 _rendimentos() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,

      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor, 
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(text: "Seu ", style: TextStyle(color: Colors.black, fontSize:16),),
            TextSpan(
              text: "Informe de \nrendimento",
              style: TextStyle(color: backgroundColor, fontSize:16),
            ),
            const TextSpan(text: " de 2023 ", style: TextStyle(color: Colors.black, fontSize:16),),
          ],
        ),
      ),
    );
  }

   _saveMoney() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,

      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor, 
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(text: "Chegou o ", style: TextStyle(color: Colors.black, fontSize:16),),
            TextSpan(
              text: "débito \nautomático da fatura do ...",
              style: TextStyle(color: backgroundColor, fontSize:16),
            ),
          ],
        ),
      ),
    );
  }

  _securityLife() {
    
    return Container(
      width: MediaQuery.of(context).size.width * .7,

      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor, 
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(text: "Conheça ", style: TextStyle(color: Colors.black, fontSize:16),),

            TextSpan(
              text: "NuBank Vida\n",
              style: TextStyle(color: backgroundColor, fontSize:16),
            ),

            const TextSpan(text: "um seguro simples", style: TextStyle(color: Colors.black, fontSize:16),),

          ],
        ),
      ),
    );
  }

  _friendsRecomended() {
    
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor, 
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(text: "Salve seus amigos \nda burocracia ", style: TextStyle(color: Colors.black, fontSize:16),),

            TextSpan(
              text: "Faça...",
              style: TextStyle(color: backgroundColor, fontSize:16),
            ),


          ],
        ),
      ),
    );
  }
}
