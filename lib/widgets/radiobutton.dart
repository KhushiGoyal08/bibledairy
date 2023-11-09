import 'package:flutter/material.dart';
class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  int? _value =1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(

            children: [
             const  Text("English"),
          const     Spacer(),
              Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value){
                    setState(() {
                      _value=value;
                    });
                  },
              activeColor: Colors.blue,
              ),
            ],
          ),
          Row(

            children: [
              const  Text("Chinese"),
              const     Spacer(),
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value=value;
                  });
                },
                activeColor: Colors.blue,
              ),
            ],
          ),
          Row(

            children: [
              const  Text("Kannada"),
              const     Spacer(),
              Radio(
                value: 3,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value= value;
                  });
                },
                activeColor: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
