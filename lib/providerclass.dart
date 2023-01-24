import 'package:flutter/material.dart';
class Cartprovider with ChangeNotifier{
List Cart =[];
List get favouritecart =>Cart;

void favourites(String itemnames){
  final favList = Cart.contains(itemnames);
  if(favList){
    Cart.remove(itemnames);
  }else{
    Cart.add(itemnames);
  }
  notifyListeners();
}
bool check(String itemnames){
final checking =Cart.contains(itemnames);
return checking;

}
}