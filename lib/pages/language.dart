import 'package:bibblediary/widgets/onlinebutton.dart';
import 'package:flutter/material.dart';

import '../widgets/radiobutton.dart';
class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(144, 38, 37,1) ,
        leading: IconButton(onPressed: (){},icon: const  Icon(Icons.arrow_back,
        color: Colors.white,),),
        title: Row(
          children: [
        const   Text("Bible Diary",
            style: TextStyle(
              color: Colors.white,
            ),),
         const    Spacer(),
            IconButton(onPressed: (){}, icon: const  Icon(Icons.more_vert, color: Colors.white,))
          ],
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
           const   Text("Settings",
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20
             ),),
         const  SizedBox(
            height: 32,
          ),
         card("Language"),
           const  Radiobutton(),
            card("Bible Viewing"),
            const Onlinebutton()
          ],
        ),
      ),
    );
  }
  Widget card(String text){
    return  Card(
      color: Colors.grey[200],
      child:  Padding(
        padding:  const EdgeInsets.all(8.0),
        child: Row(
          children: [

           const  Image(

              image: AssetImage("assets/images/cloud.png",
              ),
              color: Colors.black,
              height: 32,),
          const   SizedBox(
              width: 8,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
