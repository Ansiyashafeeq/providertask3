import 'package:flutter/material.dart';
import 'package:providertask3/providerclass.dart';
import 'package:provider/provider.dart';
class Cartpage extends StatefulWidget {
  Cartpage({Key? key}) : super(key: key);

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {

  @override
  Widget build(BuildContext context) {
    final object =Provider.of<Cartprovider>(context);
    List store =object.favouritecart;
    return  Scaffold(
      appBar: AppBar(title: Text('Your cart',style: TextStyle(fontSize: 24,color: Colors.white),),),
      body: ListView.builder(itemCount:store.length,itemBuilder:  (BuildContext context, int index){
        return ListTile(
         title: Text(
           store[index],style: TextStyle(fontSize: 20,color: Colors.black),
         ),
        );
    }
      )
    );
  }
}
