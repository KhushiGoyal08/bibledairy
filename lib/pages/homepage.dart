import 'package:bibblediary/pages/audioreading.dart';
import 'package:bibblediary/pages/language.dart';
import 'package:bibblediary/widgets/bottomnavcontainer.dart';
import 'package:bibblediary/widgets/homecard.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Scaffold(
        key: _scaffoldKey,
    drawer: Drawer(
      child: ListView(


        children: [
          const DrawerHeader(

            child: Image(image: AssetImage("assets/images/drawer image.png")),
          ),
          ListTile(
            leading:const Icon(
                Icons.arrow_forward
            ),
            title: const Text('About Claretians'),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const AudioReading()));
            },
          ),
          ListTile(
            leading:const Icon(
                Icons.arrow_forward
            ),
            title: const Text('Settings'),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const Language()));
            },
          ),
          ListTile(
            leading:const Icon(
                Icons.arrow_forward
            ),
            title: const Text('Get Notified'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:const Icon(
                Icons.arrow_forward
            ),
            title: const Text('Donate'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),

   body: Column(

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
                  const  Icon(Icons.event_note,
                     color: Colors.white,
                   ),
                   const   SizedBox(
                       width: 16,
                     ),
                   const   Text("Bible Diary",
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
                    GestureDetector(
                      // onTap:  Scaffold.of(context).openDrawer();,
                      child: const  Text("A/@",
                         style: TextStyle(
                             color: Colors.white
                         ),
                       ),
                    ),

                     IconButton(onPressed:() => _scaffoldKey.currentState!.openDrawer(),
                         icon:const  Icon(Icons.more_vert,
                           color: Colors.white,
                         ),),

                   ],
                 ),
               ),
               // for Text widget
        const  Center(
         child:  Text("Fri, Oct 16 2023",
         style: TextStyle(
           color: Colors.white
         ),)
         ),
               const  Center(
                   child:  Text("28th Week in Ordinary Time",
                     style: TextStyle(
                         color: Colors.white
                     ),
                   )
               ),
               const  Center(
                   child:  Text("Opt. Memorial,Margaret Mary Alacoque",
                     style: TextStyle(
                         color: Colors.white
                     ),
                   )
               ),
               const  Center(
                   child:  Text("Psalter: Week 3",
                     style: TextStyle(
                         color: Colors.white
                     ),
                   ),
               ),

             ],
           ),
         ),
         // Homecard.dart

          Expanded(
            child: HomeCard(),
            ),

         //navbar

       ],
   ),
  bottomNavigationBar: const BottomContainer(),
      ),
    );
  }


}
