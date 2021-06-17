import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import './add_place_screen.dart';
class PlacesListScreen extends StatelessWidget{
Widget build(BuildContext context)
{
  return Scaffold(
    appBar: AppBar(title: Text(" PLaces"),
    actions: [
      IconButton(onPressed:()=> Navigator.of(context).pushNamed(AddPlaceScreen.routeName), icon: Icon(Icons.add))
    ],),
    body: Center(child: CircularProgressIndicator()),
  );
}
}