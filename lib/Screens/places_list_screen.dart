import 'package:flutter/material.dart';
import 'package:great_places/Screens/add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY PLACES'),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
          }, icon: const Icon(Icons.add))
        ],
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
