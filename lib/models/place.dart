import 'dart:io';
import 'package:flutter/foundation.dart';
class PlaceLocation{
  final double lattitude;
  final double longitude;
  final String address ;

  PlaceLocation({
   @required this.lattitude,
   @required this.longitude,
     this.address,
  });
}

class Place{
 final String id;
 final String title;
 final File image;
 final PlaceLocation location;
 
 Place({
   @required this.id,
   @required this.title,
   @required this.image,
   @required this.location,
 });
 

 
    
}