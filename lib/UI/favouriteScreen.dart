import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/favProvider.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow,),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index) {
              return Consumer<FavProvider>(builder: (context,value,child){
                return ListTile(
                  onTap: () {
                    if(value.seletcedIndex.contains(index)){
                      value.remooveSelectedIndex(index);
                    }else{
                      value.addSelectedIndex(index);
                    }
                  },
                  title: Text("Item" + index.toString()),
                  trailing: Icon(value.seletcedIndex.contains(index)? Icons.favorite :Icons.favorite_border),
                );
              });
            }),
          )
        ],
      ),
    );
  }
}
