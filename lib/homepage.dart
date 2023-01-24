import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask3/cart.dart';
import 'package:providertask3/providerclass.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List Cartitems =[
    'Milk',
    'Butter',
    'Salt',
    'Pepper',
    'Sugar',
    'Vanilla',
    'Cookies',
    'Chips',
    'Nuts',
    'Soap',
    'Cleaner',
    'Shampoo',
    'Toothpaste'

  ];
  @override
  Widget build(BuildContext context) {
    final object=Provider.of<Cartprovider>(context);
    return  Scaffold(
      appBar: AppBar(title: Text('Grocery'),),
      body: ListView.builder(itemCount:Cartitems.length,itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: Text(Cartitems[index]),
          trailing: Checkbox(checkColor: Colors.white,
              activeColor: Colors.blue,
              value: object.check(Cartitems[index]),
              onChanged: (bool ?value){
              object.favourites(Cartitems[index]);
              })

        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()),);
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
    
      
   
  }
}
