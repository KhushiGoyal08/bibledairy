import 'package:flutter/material.dart';
class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.grey[200],
      height: 90,
      child: Column(
        children: [
        const   Center(
            child: Text("Buy Religious & Liturgical Articles"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
         Col("assets/images/flipkart.png","Flipkart"),
                Col("assets/images/amazon.jpg","Amazon"),
                Col("assets/images/san claret.jpg","San Claret"),
                Col("assets/images/publication.png","Publication"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Col(String image, String text){
    return Column(

      children: [
        Image(image: AssetImage(image),
        height: 25,),
        Text(text)
      ],
    );
  }
}
