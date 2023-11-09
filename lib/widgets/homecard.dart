import 'package:bibblediary/widgets/bottomnavcontainer.dart';
import 'package:flutter/material.dart';
class HomeCard extends StatelessWidget {
  HomeCard({super.key});
List<String> images=["daily reading","holy bible","holy eucharist","prayers","rosary","homily aid"];
List<String> text=["Daily Reading","Holy Bible","Holy Eucharist","Prayers","Rosary","Homily Aid"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        shrinkWrap: true,
           gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2, // Number of columns
             crossAxisSpacing: 16, // Spacing between columns
             mainAxisSpacing: 16, // Spacing between rows
           ),
           itemCount: 6, // The total number of items
           itemBuilder: (BuildContext context, int index) {
             // Create and return the widget for the current item at 'index'
             return  Card(

               color: Colors.grey[200],
               child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Image(image: AssetImage("assets/images/${images[index]}.png",

                   ),
           height: 70,
                ),
                   Text(text[index]),
                 ],
               ),
             );
           },
         ),
    );
  }
}
