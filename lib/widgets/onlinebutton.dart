import 'package:bibblediary/widgets/downloadindicator.dart';
import 'package:flutter/material.dart';
class Onlinebutton extends StatefulWidget {
  const Onlinebutton({super.key});

  @override
  State<Onlinebutton> createState() => _OnlinebuttonState();
}

class _OnlinebuttonState extends State<Onlinebutton> {
  int? _value =1;
  bool isclicked=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(

            children: [
              const  Text("Online"),
              const     Spacer(),
              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value=value;
                    isclicked =false;
                  });
                },
                activeColor: Colors.blue,
              ),
            ],
          ),
          Row(

            children: [
              const  Text("Offline"),
              const     Spacer(),
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value=value;
                    isclicked=true;
                  });
                },
                activeColor: Colors.blue,
              ),
            ],
          ),
      const  SizedBox(
         height: 16,
       ),
       if(isclicked==true)
         DownloadProgressIndicator()
        ],
      ),
    );
  }
}
