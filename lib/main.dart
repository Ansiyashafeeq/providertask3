

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask3/homepage.dart';
import 'package:providertask3/providerclass.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>Cartprovider(),
    child: MaterialApp(home: Home(),),
  ));
}


