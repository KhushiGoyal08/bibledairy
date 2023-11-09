import 'package:flutter/material.dart';
class AudioReading extends StatefulWidget {
  const AudioReading({super.key});

  @override
  State<AudioReading> createState() => _AudioReadingState();
}

class _AudioReadingState extends State<AudioReading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(
            color:const Color.fromRGBO(144, 38, 37,1) ,
            child:  Column(

              children: [
                // for calender and drawer button
                Padding(
                  padding: const  EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const  Icon(Icons.arrow_back,
                        color: Colors.white,
                      ),
                      const   SizedBox(
                        width: 16,
                      ),
                      const   Text("Fri,Oct 16 2023",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      const  SizedBox(
                        width: 16,
                      ),
                      const  Image(image: AssetImage("assets/images/book.jpg",),
                        height: 32,
                      ),
                      const   Spacer(),
                     const  Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Icon(Icons.home_outlined,
                        color: Colors.white,),
                      ),
                      GestureDetector(

                        child: const  Text("A/@",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),

                      IconButton(onPressed:(){},
                        icon:const  Icon(Icons.event_note,
                          color: Colors.white,
                        ),),

                    ],
                  ),
                ),
                // for Text widget

              const   Padding(
                  padding:  EdgeInsets.only(
                     left: 48,
                    right: 48,
                    bottom: 16
                  ),
                  child: Column(


                    children: [
                      Align(
                       alignment: Alignment.topLeft,
                       child: Text("28th Week in Ordinary Time",

                         style: TextStyle(
                             color: Colors.white
                         ),
                       ),
                  ),
                  Align(
                       alignment: Alignment.topLeft,
                       child: Text("Opt. Memorial,Margaret Mary Alacoque",
                         style: TextStyle(
                             color: Colors.white
                         ),
                       ),
                  ),
                   Align(
                       alignment: Alignment.topLeft,
                       child: Text("Psalter: Week 3",

                         style: TextStyle(
                             color: Colors.white
                         ),
                       ),
                  ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
