import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/exampleProdvier.dart';
class ColorChangeWithSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOnePeovider>(builder: (context,value,child){
            return Slider(
                max: 1.0,
                min: 0.0,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          }),
         Consumer<ExampleOnePeovider>(builder: (context,vlaue,child){
           return  Row(
             children: [
               Expanded(
                 child: Container(
                   height: 250,
                   decoration: BoxDecoration(
                     color: Colors.red.withOpacity(vlaue.value),
                   ),
                   child: Center(child: const Text("Container1")),
                 ),
               ),
               Expanded(
                 child: Container(
                   height: 250,
                   decoration: BoxDecoration(
                     color: Colors.green.withOpacity(vlaue.value),
                   ),
                   child: Center(child: const Text("Container2")),
                 ),
               ),
             ],
           );
         })
        ],
      ),
    );
  }
}
