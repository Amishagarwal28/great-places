import 'package:flutter/material.dart';
import './providers/great_places.dart';
import 'package:provider/provider.dart';
import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext contet)
  {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
          child: MaterialApp(
        title:'Great PLaces',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
          ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName:(ctx)=>AddPlaceScreen(),
        },
      ),
    );
  }
}