import 'package:flutter/material.dart';
import 'package:great_places/Screens/add_place_screen.dart';
import 'package:great_places/Screens/places_list_screen.dart';
import 'package:provider/provider.dart';

import 'Providers/places.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Places(),
      child : MaterialApp(
        theme:
            ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        home: const PlacesListScreen(),
        routes: {
      AddPlaceScreen.routeName : (ctx) => AddPlaceScreen(),
      },
      ),
    );
  }
}
